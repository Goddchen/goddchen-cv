import 'package:causality/causality.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/cv/cv_controller.dart';
import 'package:goddchen_cv/cv/cv_data_service.dart';
import 'package:goddchen_cv/cv/cv_model.dart';
import 'package:goddchen_cv/cv/cv_navigation_service.dart';
import 'package:goddchen_cv/grid/grid_model.dart';
import 'package:goddchen_cv/main.dart';

class CvControllerImplementation implements CvController {
  final CvDataService _dataService;
  final CvNavigationService _navigationService;

  CvControllerImplementation({
    required final CvDataService dataService,
    required final CvNavigationService navigationService,
  })  : _dataService = dataService,
        _navigationService = navigationService {
    loadDataEffect.observe(
      <Type>[LoadCvCause],
      universe: causalityUniverse,
    );
  }

  Effect get loadDataEffect => Effect((final _) async {
        causalityUniverse
            .emit(CvModelUpdatedCause(CvModel(items: right(none()))));
        return (await _dataService.cvItemsTask
                .map(
                  (final List<CvDataServiceItem> items) => items
                      .map(
                        (final CvDataServiceItem item) => CvModelItem(
                          description: item.description,
                          from: item.from,
                          action: item.link.map(
                            (final Uri link) =>
                                GridModelItemAction.link(link: link),
                          ),
                          title: item.title,
                          until: item.until,
                        ),
                      )
                      .toList(),
                )
                .run())
            .match(
          (final Object error) => <Cause>[
            CvModelUpdatedCause(CvModel(items: left(error))),
          ],
          (final List<CvModelItem> items) => <Cause>[
            CvModelUpdatedCause(CvModel(items: right(some(items)))),
          ],
        );
      });

  @override
  void openItem({required final CvModelItem item}) => item.action.fold(
        () {},
        (final GridModelItemAction action) => action.when(
          link: (final Uri link) => _navigationService.openLink(link: link),
          route: (final Uri route) => _navigationService.push(route: route),
        ),
      );
}

class LoadCvCause extends Cause {}
