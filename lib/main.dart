import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/constants.dart';
import 'package:goddchen_cv/cv/cv_controller_implementation.dart';
import 'package:goddchen_cv/cv/cv_view.dart';
import 'package:goddchen_cv/flavors.dart';
import 'package:goddchen_cv/gen/assets.gen.dart';
import 'package:goddchen_cv/github_prs/github_prs_controller_implementation.dart';
import 'package:goddchen_cv/github_prs/github_prs_view.dart';
import 'package:goddchen_cv/main_navigation_service.dart';
import 'package:goddchen_cv/portfolio/portfolio_controller_implementation.dart';
import 'package:goddchen_cv/portfolio/portfolio_view.dart';
import 'package:goddchen_cv/services/data/data_service.dart';
import 'package:goddchen_cv/services/navigation/navigation_service.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_controller_implementation.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_view.dart';

FutureOr<void> main() async {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(final BuildContext context) => ProviderScope(
        child: MaterialApp(
          navigatorKey: navigatorKey,
          title: F.title,
          home: F.appFlavor == Flavor.develop || kDebugMode
              ? Banner(
                  message: F.name,
                  location: BannerLocation.topStart,
                  child: _buildScaffold(),
                )
              : _buildScaffold(),
        ),
      );

  Widget _buildBody() => SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            _buildCv(),
            _buildPortfolio(),
            _buildYoutubeVideos(),
            _buildGithubPrs(),
          ],
        ),
      );

  Widget _buildCv() => Consumer(
        key: cvKey,
        builder: (final _, final WidgetRef ref, final ___) {
          final CvControllerImplementationProvider provider =
              cvControllerImplementationProvider(
            dataService: ref.watch(dataServiceProvider),
            navigationService: ref.watch(navigationServiceProvider),
          );
          return CvView(
            controller: ref.watch(provider.notifier),
            model: ref.watch(provider),
          );
        },
      );

  Widget _buildGithubPrs() => Consumer(
        key: prsKey,
        builder: (final _, final WidgetRef ref, final ___) {
          final GithubPrsControllerImplementationProvider provider =
              githubPrsControllerImplementationProvider(
            dataService: ref.watch(dataServiceProvider),
            navigationService: ref.watch(navigationServiceProvider),
          );
          return GithubPrsView(
            controller: ref.watch(provider.notifier),
            model: ref.watch(provider),
          );
        },
      );

  Widget _buildPortfolio() => Consumer(
        key: portfolioKey,
        builder: (final _, final WidgetRef ref, final ___) {
          final PortfolioControllerImplementationProvider provider =
              portfolioControllerImplementationProvider(
            dataService: ref.watch(dataServiceProvider),
            navigationService: ref.watch(navigationServiceProvider),
          );
          return PortfolioView(
            controller: ref.watch(provider.notifier),
            model: ref.watch(provider),
          );
        },
      );

  Widget _buildScaffold() => Consumer(
        builder: (final BuildContext context, final WidgetRef ref, final ___) {
          final MainNavigationService navigationService =
              ref.watch(navigationServiceProvider);
          return NotificationListener<ScrollNotification>(
            onNotification: (final ScrollNotification notification) {
              setState(() {});
              return false;
            },
            child: AdaptiveScaffold(
              appBar: AppBar(
                title: Text(F.title),
              ),
              body: (final _) => _buildBody(),
              destinations: <NavigationDestination>[
                const NavigationDestination(
                  icon: Icon(
                    Icons.list,
                    size: 24,
                    color: cvColor,
                  ),
                  label: 'CV',
                ),
                const NavigationDestination(
                  icon: Icon(
                    Icons.home,
                    color: portfolioColor,
                  ),
                  label: 'Portfolio',
                ),
                NavigationDestination(
                  icon: Assets.icons.youtube.logo.svg(
                    height: 24,
                    width: 24,
                  ),
                  label: 'Youtube Videos',
                ),
                NavigationDestination(
                  icon: Assets.icons.github.pullRequest.svg(
                    height: 24,
                    width: 24,
                  ),
                  label: 'PRs',
                ),
              ],
              onSelectedIndexChange: (final int index) {
                if (navigationService.canPop()) {
                  navigationService.pop();
                }
                return switch (index) {
                  0 => optionOf(cvKey.currentContext).fold(
                      () {},
                      (final BuildContext context) => Scrollable.ensureVisible(
                        context,
                        duration: kThemeAnimationDuration,
                      ),
                    ),
                  1 => optionOf(portfolioKey.currentContext).fold(
                      () {},
                      (final BuildContext context) => Scrollable.ensureVisible(
                        context,
                        duration: kThemeAnimationDuration,
                      ),
                    ),
                  2 => optionOf(youtubeVideosKey.currentContext).fold(
                      () {},
                      (final BuildContext context) => Scrollable.ensureVisible(
                        context,
                        duration: kThemeAnimationDuration,
                      ),
                    ),
                  3 => optionOf(prsKey.currentContext).fold(
                      () {},
                      (final BuildContext context) => Scrollable.ensureVisible(
                        context,
                        duration: kThemeAnimationDuration,
                      ),
                    ),
                  _ => null,
                };
              },
              selectedIndex: _calculateSelectedIndex(context: context),
            ),
          );
        },
      );

  Widget _buildYoutubeVideos() => Consumer(
        key: youtubeVideosKey,
        builder: (final _, final WidgetRef ref, final ___) {
          final YoutubeVideosControllerImplementationProvider provider =
              youtubeVideosControllerImplementationProvider(
            dataService: ref.watch(dataServiceProvider),
            navigationService: ref.watch(navigationServiceProvider),
          );
          return YoutubeVideosView(
            controller: ref.watch(provider.notifier),
            model: ref.watch(provider),
          );
        },
      );

  int _calculateSelectedIndex({
    required final BuildContext context,
  }) {
    Either<Object, double> youtubeVideosYOffset =
        findWidgetOffset(globalKey: youtubeVideosKey);
    Either<Object, double> prsYOffset = findWidgetOffset(globalKey: prsKey);
    Either<Object, double> portfolioYOffset =
        findWidgetOffset(globalKey: portfolioKey);
    if (prsYOffset.toOption().getOrElse(() => double.infinity) <= 0) {
      return 3;
    } else if (youtubeVideosYOffset
            .toOption()
            .getOrElse(() => double.infinity) <=
        0) {
      return 2;
    } else if (portfolioYOffset.toOption().getOrElse(() => double.infinity) <=
        0) {
      return 1;
    } else {
      return 0;
    }
  }
}
