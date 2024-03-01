import 'dart:async';

import 'package:causality/causality.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/cv/cv_controller.dart';
import 'package:goddchen_cv/cv/cv_data_service.dart';
import 'package:goddchen_cv/cv/cv_model.dart';
import 'package:goddchen_cv/cv/cv_navigation_service.dart';
import 'package:goddchen_cv/grid/grid_model.dart';
import 'package:goddchen_cv/main.dart';

class CvControllerImplementation implements CvController {
  final CvDataService _cvDataService;
  final CvNavigationService _cvNavigationService;

  CvControllerImplementation({
    required final CvDataService cvDataService,
    required final CvNavigationService cvNavigationService,
  })  : _cvDataService = cvDataService,
        _cvNavigationService = cvNavigationService {
    causalityUniverse.emit(
      CvModelUpdatedCause(
        CvModel(
          items: right(none()),
        ),
      ),
    );
    scheduleMicrotask(_initTask.run);
    causalityUniverse.observe(
      causeTypes: <Type>[LoadCvCause],
      effect: Effect((final _) async {
        await Future<void>.delayed(const Duration(seconds: 1));
        await _initTask.run();
        return <Cause>[];
      }),
    );
    causalityUniverse.emit(LoadCvCause());
  }

  Task<void> get _initTask => _cvDataService.cvItemsTask
      .map(
        (final List<CvDataServiceItem> items) => items
            .map(
              (final CvDataServiceItem item) => CvModelItem(
                description: item.description,
                from: item.from,
                action: item.link.map(
                  (final Uri link) => GridModelItemAction.link(link: link),
                ),
                title: item.title,
                until: item.until,
              ),
            )
            .toList(),
      )
      .match(
        (final Object error) => causalityUniverse.emit(
          CvModelUpdatedCause(
            CvModel(
              items: left(error),
            ),
          ),
        ),
        (final List<CvModelItem> items) => causalityUniverse.emit(
          CvModelUpdatedCause(
            CvModel(
              items: right(some(items)),
            ),
          ),
        ),
      );

  @override
  void openItem({required final CvModelItem item}) => item.action.fold(
        () {},
        (final GridModelItemAction action) => action.when(
          link: (final Uri link) => _cvNavigationService.openLink(link: link),
          route: (final Uri route) => _cvNavigationService.push(route: route),
        ),
      );
}

class LoadCvCause extends Cause {}
