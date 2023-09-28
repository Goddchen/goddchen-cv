import 'dart:async';

import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/home/home_controller.dart';
import 'package:goddchen_cv/home/home_model.dart';
import 'package:goddchen_cv/home/home_navigation_service.dart';
import 'package:goddchen_cv/home/home_package_info_service.dart';

class HomeControllerImplementation implements HomeController {
  final HomeModel _model;
  final HomeNavigationService _navigationService;
  final HomePackageInfoService _packageInfoService;

  HomeControllerImplementation({
    required final HomeModel model,
    required final HomeNavigationService navigationService,
    required final HomePackageInfoService packageInfoService,
  })  : _model = model,
        _navigationService = navigationService,
        _packageInfoService = packageInfoService {
    scheduleMicrotask(
      _packageInfoService.versionNameTask
          .match(
            (final Object error) =>
                _model.versionName.value = AsyncDataError<String>(error: error),
            (final String data) =>
                _model.versionName.value = AsyncDataData<String>(data: data),
          )
          .run,
    );
  }

  @override
  void openLink({required final Uri link}) =>
      _navigationService.openLink(link: link);

  @override
  void updateCurrentIndex({required final int currentIndex}) =>
      _model.selectedIndex.value = currentIndex;
}
