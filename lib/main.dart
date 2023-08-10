import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goddchen_cv/flavors.dart';
import 'package:goddchen_cv/services/navigation/go_router.dart';

FutureOr<void> main() async {
  runApp(
    ProviderScope(
      child: Consumer(
        builder: (final _, final WidgetRef ref, final ___) =>
            MaterialApp.router(
          routerConfig: ref.watch(goRouterProvider),
          title: F.title,
        ),
      ),
    ),
  );
}
