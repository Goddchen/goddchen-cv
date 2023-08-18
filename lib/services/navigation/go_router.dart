import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:goddchen_cv/hobbies/dog_sport/dog_sport_view.dart';
import 'package:goddchen_cv/hobbies/igp/hobby_igp_view.dart';
import 'package:goddchen_cv/main/main.dart';
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
      ),
      GoRoute(
        builder: (final _, final __) => const DogSportView(),
        path: dogSportRoute.toString(),
      ),
      GoRoute(
        builder: (final _, final __) => const IgpView(),
        path: igpRoute.toString(),
      ),
    ],
  );
}
