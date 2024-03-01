import 'dart:async';

import 'package:causality/causality.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_causality/flutter_causality.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:goddchen_cv/cv/cv_controller.dart';
import 'package:goddchen_cv/cv/cv_controller_implementation.dart';
import 'package:goddchen_cv/flavors.dart';
import 'package:goddchen_cv/generated/codegen_loader.g.dart';
import 'package:goddchen_cv/github_prs/github_prs_data_service.dart';
import 'package:goddchen_cv/github_prs/github_prs_navigation_service.dart';
import 'package:goddchen_cv/hobbies/hobbies_data_service.dart';
import 'package:goddchen_cv/hobbies/hobbies_navigation_service.dart';
import 'package:goddchen_cv/home/home_flavor_service.dart';
import 'package:goddchen_cv/home/home_navigation_service.dart';
import 'package:goddchen_cv/home/home_package_info_service.dart';
import 'package:goddchen_cv/portfolio/portfolio_data_service.dart';
import 'package:goddchen_cv/portfolio/portfolio_navigation_service.dart';
import 'package:goddchen_cv/services/data/data_service.dart';
import 'package:goddchen_cv/services/flavor/flavor_service.dart';
import 'package:goddchen_cv/services/navigation/go_router.dart';
import 'package:goddchen_cv/services/navigation/navigation_service.dart';
import 'package:goddchen_cv/services/package_info/package_info_service.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_data_service.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_navigation_service.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  _setupDependencies();
  runApp(
    ProviderScope(
      child: CausalityUniverseWidget(
        causalityUniverse: causalityUniverse,
        child: EasyLocalization(
          assetLoader: const CodegenLoader(),
          fallbackLocale: const Locale('en'),
          path: 'assets/translations',
          supportedLocales: const <Locale>[
            Locale('de'),
            Locale('en'),
          ],
          useOnlyLangCode: true,
          child: Builder(
            builder: (final BuildContext context) {
              return MaterialApp.router(
                locale: context.locale,
                localizationsDelegates: context.localizationDelegates,
                routerConfig: GetIt.I<GoRouter>(),
                supportedLocales: context.supportedLocales,
                title: F.title,
              );
            },
          ),
        ),
      ),
    ),
  );
}

final CausalityUniverse causalityUniverse = CausalityUniverse();

void _setupDependencies() {
  GetIt.I.registerSingleton(goRouter());
  final NavigationServiceAggregator navigationService =
      GoRouterNavigationService(goRouter: GetIt.I());
  GetIt.I.registerSingleton<HomeNavigationService>(navigationService);
  GetIt.I.registerSingleton<GithubPrsNavigationService>(navigationService);
  GetIt.I.registerSingleton<HobbiesNavigationService>(navigationService);
  GetIt.I.registerSingleton<PortfolioNavigationService>(navigationService);
  GetIt.I.registerSingleton<YoutubeVideosNavigationService>(navigationService);
  final DataServiceAggregator dataService = DataServiceImplementation();
  GetIt.I.registerSingleton<GithubPrsDataService>(dataService);
  GetIt.I.registerSingleton<HobbiesDataService>(dataService);
  GetIt.I.registerSingleton<PortfolioDataService>(dataService);
  GetIt.I.registerSingleton<YoutubeVideosDataService>(dataService);
  final FlavorServiceAggregator flavorService = FlavorService();
  GetIt.I.registerSingleton<HomeFlavorService>(flavorService);
  GetIt.I.registerSingleton<HomePackageInfoService>(PackageInfoService());
  GetIt.I.registerSingleton<CvController>(
    CvControllerImplementation(
      cvDataService: dataService,
      cvNavigationService: navigationService,
    ),
  );
}
