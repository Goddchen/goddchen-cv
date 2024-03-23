import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/hobbies/dog_sport/dog_sport_view.dart';
import 'package:goddchen_cv/hobbies/igp/hobby_igp_view.dart';
import 'package:goddchen_cv/hobbies/ksp/hobby_ksp_view.dart';
import 'package:goddchen_cv/hobbies/lol/hobby_lol_view.dart';
import 'package:goddchen_cv/home/home_controller_implementation.dart';
import 'package:goddchen_cv/home/home_flavor_service.dart';
import 'package:goddchen_cv/home/home_model.dart';
import 'package:goddchen_cv/home/home_view.dart';
import 'package:goddchen_cv/services/navigation/routes.dart';

GoRouter goRouter() {
  GoRouter.optionURLReflectsImperativeAPIs = true;
  return GoRouter(
    debugLogDiagnostics: kDebugMode,
    routes: <GoRoute>[
      GoRoute(
        builder: (final _, final __) {
          final HomeFlavorService flavorService = GetIt.I();
          final HomeModel model = HomeModel(
            flavor: flavorService.homeFlavorServiceFlavor,
            selectedIndex: ValueNotifier<int>(0),
            title: flavorService.homeFlavorServiceTitle,
            versionName:
                ValueNotifier<AsyncData<String>>(AsyncData<String>.loading()),
          );
          return HomeView(
            controller: HomeControllerImplementation(
              flavorService: flavorService,
              model: model,
              navigationService: GetIt.I(),
              packageInfoService: GetIt.I(),
            ),
            model: model,
          );
        },
        path: '/',
        routes: <GoRoute>[
          GoRoute(
            builder: (final _, final __) => const DogSportView(),
            path: dogSportRoute.toString().substring(1),
          ),
          GoRoute(
            builder: (final _, final __) => const IgpView(),
            path: igpRoute.toString().substring(1),
          ),
          GoRoute(
            builder: (final _, final __) => KspView(
              navigationService: GetIt.I(),
            ),
            path: kspRoute.toString().substring(1),
          ),
          GoRoute(
            builder: (final _, final __) => LolView(
              navigationService: GetIt.I(),
            ),
            path: lolRoute.toString().substring(1),
          ),
        ],
      ),
    ],
  );
}
