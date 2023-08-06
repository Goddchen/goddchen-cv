import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goddchen_cv/flavors.dart';
import 'package:goddchen_cv/github_pr/github_pr_controller_implementation.dart';
import 'package:goddchen_cv/github_pr/github_pr_view.dart';
import 'package:goddchen_cv/github_prs/github_prs_controller_implementation.dart';
import 'package:goddchen_cv/github_prs/github_prs_model.dart';
import 'package:goddchen_cv/github_prs/github_prs_view.dart';
import 'package:goddchen_cv/services/github/github_service.dart';
import 'package:goddchen_cv/services/navigation/navigation_service.dart';
import 'package:goddchen_cv/services/youtube/youtube_service.dart';
import 'package:goddchen_cv/youtube_video/youtube_video_controller_implementation.dart';
import 'package:goddchen_cv/youtube_video/youtube_video_view.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_controller_implementation.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_model.dart';
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
        child: Column(
          children: <Widget>[
            _buildYoutubeVideos(),
            _buildGithubPrs(),
          ],
        ),
      );

  Widget _buildGithubPrs() => Consumer(
        builder: (final _, final WidgetRef ref, final ___) {
          final GithubPrsControllerImplementationProvider provider =
              githubPrsControllerImplementationProvider(
            githubService: ref.watch(githubServiceProvider),
          );
          return GithubPrsView(
            controller: ref.watch(provider.notifier),
            model: ref.watch(provider),
            prBuilder: (final GithubPrsModelPr pr) => Consumer(
              builder: (final _, final WidgetRef ref, final __) {
                final GithubPrControllerImplementationProvider provider =
                    GithubPrControllerImplementationProvider(
                  githubService: ref.watch(githubServiceProvider),
                  navigationService: ref.watch(navigationServiceProvider),
                  number: pr.number,
                  owner: pr.owner,
                  repo: pr.repo,
                );
                return GithubPrView(
                  controller: ref.watch(provider.notifier),
                  model: ref.watch(provider),
                );
              },
            ),
          );
        },
      );

  Widget _buildYoutubeVideos() => Consumer(
        builder: (final _, final WidgetRef ref, final ___) {
          final YoutubeVideosControllerImplementationProvider provider =
              youtubeVideosControllerImplementationProvider(
            youtubeService: ref.watch(
              youtubeServiceProvider,
            ),
          );
          return YoutubeVideosView(
            controller: ref.watch(provider.notifier),
            model: ref.watch(provider),
            videoBuilder: (final YoutubeVideosModelVideo video) => Consumer(
              builder: (final _, final WidgetRef ref, final ___) {
                final YoutubeVideoControllerImplementationProvider provider =
                    youtubeVideoControllerImplementationProvider(
                  id: video.id,
                  navigationService: ref.watch(navigationServiceProvider),
                  youtubeService: ref.watch(youtubeServiceProvider),
                );
                return YoutubeVideoView(
                  controller: ref.watch(provider.notifier),
                  model: ref.watch(provider),
                );
              },
            ),
          );
        },
      );
}
