import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide AsyncData;
import 'package:go_router/go_router.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/hobbies/dog_sport/dog_sport_view.dart';
import 'package:goddchen_cv/hobbies/igp/hobby_igp_view.dart';
import 'package:goddchen_cv/hobbies/ksp/hobby_ksp_view.dart';
import 'package:goddchen_cv/hobbies/lol/hobby_lol_view.dart';
import 'package:goddchen_cv/home/home_controller_implementation.dart';
import 'package:goddchen_cv/home/home_model.dart';
import 'package:goddchen_cv/home/home_view.dart';
import 'package:goddchen_cv/services/navigation/navigation_service.dart';
import 'package:goddchen_cv/services/navigation/routes.dart';
import 'package:goddchen_cv/services/package_info/package_info_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart' hide AsyncData;

part 'go_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter goRouter(final _) {
  GoRouter.optionURLReflectsImperativeAPIs = true;
  return GoRouter(
    debugLogDiagnostics: kDebugMode,
    routes: <GoRoute>[
      GoRoute(
        builder: (final _, final __) => Consumer(
          builder: (final _, final WidgetRef ref, final ___) {
            final HomeModel model = HomeModel(
              selectedIndex: ValueNotifier<int>(0),
              versionName:
                  ValueNotifier<AsyncData<String>>(AsyncDataLoading<String>()),
            );
            return HomeView(
              controller: HomeControllerImplementation(
                model: model,
                navigationService: ref.watch(navigationServiceProvider),
                packageInfoService: ref.watch(packageInfoServiceProvider),
              ),
              model: model,
            );
          },
        ),
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
            builder: (final _, final __) => Consumer(
              builder: (final _, final WidgetRef ref, final ___) => KspView(
                navigationService: ref.watch(navigationServiceProvider),
              ),
            ),
            path: kspRoute.toString().substring(1),
          ),
          GoRoute(
            builder: (final _, final __) => Consumer(
              builder: (final _, final WidgetRef ref, final ___) => LolView(
                navigationService: ref.watch(navigationServiceProvider),
              ),
            ),
            path: lolRoute.toString().substring(1),
          ),
        ],
      ),
    ],
  );
}
