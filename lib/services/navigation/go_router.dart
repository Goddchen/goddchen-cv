import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:goddchen_cv/hobbies/dog_sport/dog_sport_view.dart';
import 'package:goddchen_cv/hobbies/igp/hobby_igp_view.dart';
import 'package:goddchen_cv/hobbies/ksp/hobby_ksp_view.dart';
import 'package:goddchen_cv/hobbies/lol/hobby_lol_view.dart';
import 'package:goddchen_cv/main/main.dart';
import 'package:goddchen_cv/services/navigation/navigation_service.dart';
import 'package:goddchen_cv/services/navigation/routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter goRouter(final _) {
  GoRouter.optionURLReflectsImperativeAPIs = true;
  return GoRouter(
    debugLogDiagnostics: kDebugMode,
    routes: <GoRoute>[
      GoRoute(
        builder: (final _, final __) => const Main(),
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
