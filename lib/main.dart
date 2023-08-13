import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goddchen_cv/flavors.dart';
import 'package:goddchen_cv/generated/codegen_loader.g.dart';
import 'package:goddchen_cv/services/navigation/go_router.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    ProviderScope(
      child: EasyLocalization(
        assetLoader: const CodegenLoader(),
        fallbackLocale: const Locale('en'),
        path: 'assets/translations',
        supportedLocales: const <Locale>[
          Locale('de'),
          Locale('en'),
        ],
        useOnlyLangCode: true,
        child: Consumer(
          builder:
              (final BuildContext context, final WidgetRef ref, final ___) =>
                  MaterialApp.router(
            locale: context.locale,
            localizationsDelegates: context.localizationDelegates,
            routerConfig: ref.watch(goRouterProvider),
            supportedLocales: context.supportedLocales,
            title: F.title,
          ),
        ),
      ),
    ),
  );
}
