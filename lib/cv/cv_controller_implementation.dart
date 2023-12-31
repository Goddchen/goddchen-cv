import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/cv/cv_controller.dart';
import 'package:goddchen_cv/cv/cv_data_service.dart';
import 'package:goddchen_cv/cv/cv_model.dart';
import 'package:goddchen_cv/cv/cv_navigation_service.dart';
import 'package:goddchen_cv/grid/grid_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cv_controller_implementation.g.dart';

@riverpod
class CvControllerImplementation extends _$CvControllerImplementation
    implements CvController {
  Task<void> get _initTask => dataService.cvItemsTask
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
        (final Object error) => state = state.copyWith(items: left(error)),
        (final List<CvModelItem> items) =>
            state = state.copyWith(items: right(some(items))),
      );

  @override
  CvModel build({
    required final CvDataService dataService,
    required final CvNavigationService navigationService,
  }) {
    scheduleMicrotask(_initTask.run);
    return CvModel(items: right(none()));
  }

  @override
  void openItem({required final CvModelItem item}) => item.action.fold(
        () {},
        (final GridModelItemAction action) => action.when(
          link: (final Uri link) => navigationService.openLink(link: link),
          route: (final Uri route) => navigationService.push(route: route),
        ),
      );
}
