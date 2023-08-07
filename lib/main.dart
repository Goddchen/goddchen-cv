import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goddchen_cv/flavors.dart';
import 'package:goddchen_cv/github_prs/github_prs_controller_implementation.dart';
import 'package:goddchen_cv/github_prs/github_prs_view.dart';
import 'package:goddchen_cv/portfolio/portfolio_controller_implementation.dart';
import 'package:goddchen_cv/portfolio/portfolio_view.dart';
import 'package:goddchen_cv/services/navigation/navigation_service.dart';
import 'package:goddchen_cv/services/data/data_service.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_controller_implementation.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_view.dart';

FutureOr<void> main() async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(final BuildContext context) {
    final Scaffold scaffold = Scaffold(
      appBar: AppBar(
        title: Text(F.title),
      ),
      body: _buildBody(),
    );
    return ProviderScope(
      child: MaterialApp(
        title: F.title,
        home: F.appFlavor == Flavor.develop || kDebugMode
            ? Banner(
                message: F.name,
                location: BannerLocation.topStart,
                child: scaffold,
              )
            : scaffold,
      ),
    );
  }

  Widget _buildBody() => SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            _buildPortfolio(),
            _buildYoutubeVideos(),
            _buildGithubPrs(),
          ],
        ),
      );

  Widget _buildGithubPrs() => Consumer(
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

  Widget _buildYoutubeVideos() => Consumer(
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
}
