import 'package:go_router/go_router.dart';
import 'package:goddchen_cv/main/main.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter goRouter(final _) => GoRouter(
      routes: <GoRoute>[
        GoRoute(
          builder: (final _, final __) => const Main(),
          path: '/',
        ),
      ],
    );
