import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/cv/cv_data_service.dart';
import 'package:goddchen_cv/gen/assets.gen.dart';
import 'package:goddchen_cv/github_prs/github_prs_data_service.dart';
import 'package:goddchen_cv/hobbies/hobbies_data_service.dart';
import 'package:goddchen_cv/portfolio/portfolio_data_service.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_data_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_service.g.dart';

@Riverpod(keepAlive: true)
DataServiceAggregator dataService(final _) => DataServiceImplementation();

abstract interface class DataServiceAggregator
    implements
        CvDataService,
        GithubPrsDataService,
        HobbiesDataService,
        PortfolioDataService,
        YoutubeVideosDataService {}

class DataServiceImplementation implements DataServiceAggregator {
  @override
  TaskEither<Object, List<CvDataServiceItem>> get cvItemsTask =>
      TaskEither<Object, List<CvDataServiceItem>>.of(
        <CvDataServiceItem>[
          CvDataServiceItem(
            description: some('Description'),
            from: DateTime(2023, 1, 1),
            link: some(Uri.parse('https://www.goddchen.de')),
            title: 'Title',
            until: DateTime(2023, 8, 1),
          ),
        ],
      );

  @override
  TaskEither<Object, List<HobbiesDataServiceHobby>> get hobbiesTask =>
      TaskEither<Object, List<HobbiesDataServiceHobby>>.of(
        <HobbiesDataServiceHobby>[
          HobbiesDataServiceHobby(
            link: Uri.parse('https://www.goddchen.de'),
            title: 'Website',
          ),
        ],
      );

  @override
  TaskEither<Object, List<PortfolioDataServiceProject>> get projectsTask =>
      TaskEither<Object, List<PortfolioDataServiceProject>>.of(
        <PortfolioDataServiceProject>[
          PortfolioDataServiceProject(
            description:
                'Dart package with implementation for RFB (VNC) protocol.',
            link: Uri.parse('https://pub.dev/packages/dart_rfb'),
            title: 'dart_rfb',
          ),
        ],
      );

  @override
  TaskEither<Object, List<GithubPrsDataServicePr>> get prsTask =>
      TaskEither<Object, List<GithubPrsDataServicePr>>.of(
        <GithubPrsDataServicePr>[
          GithubPrsDataServicePr(
            link: Uri.parse('https://github.com/mkobuolys/flutter_deck/pull/1'),
            title: 'Add code highlight widget',
          ),
          GithubPrsDataServicePr(
            link: Uri.parse('https://github.com/flutter/packages/pull/4341'),
            title:
                'go_router: docs: fix typo in StatefulShellRoute.indexedStack(...) docs',
          ),
          GithubPrsDataServicePr(
            link: Uri.parse(
              'https://github.com/gdg-berlin-android/ZeBadge/pull/107',
            ),
            title: 'Run tests on PRs',
          ),
          GithubPrsDataServicePr(
            link: Uri.parse(
              'https://github.com/cirruslabs/docker-images-flutter/pull/273',
            ),
            title: 'Upgrade to Flutter 3.10.1 and 3.11.0-12.0.pre',
          ),
          GithubPrsDataServicePr(
            link: Uri.parse('https://github.com/dart-lang/async/pull/243'),
            title: 'docs: fix typo in CancelableOperation.fromFuture(...) docs',
          ),
          GithubPrsDataServicePr(
            link: Uri.parse('https://github.com/flutter/tests/pull/202'),
            title: 'add dart_rfb',
          ),
          GithubPrsDataServicePr(
            link: Uri.parse('https://github.com/flutter/tests/pull/201'),
            title: 'add flutter_rfb',
          ),
          GithubPrsDataServicePr(
            link: Uri.parse('https://github.com/flutter/flutter/pull/106511'),
            title: 'Fix typo in painting.TextStyle.merge docs',
          ),
          GithubPrsDataServicePr(
            link: Uri.parse('https://github.com/slovnicki/beamer/pull/500'),
            title:
                'Fix: popToNamed(...), need to break from the while loop when entry found',
          ),
        ],
      );

  @override
  TaskEither<Object, List<YoutubeVideosDataServiceVideo>> get videosTask =>
      TaskEither<Object, List<YoutubeVideosDataServiceVideo>>.of(
        <YoutubeVideosDataServiceVideo>[
          YoutubeVideosDataServiceVideo(
            id: 'TNnccRimhsI',
            imageAssetPath:
                some(Assets.images.youtube.thumbnailTNnccRimhsI.path),
            title: 'Droidcon 2015 / Android Piracy - Martin Liersch',
          ),
          YoutubeVideosDataServiceVideo(
            id: '31MUyoAl8pE',
            imageAssetPath:
                some(Assets.images.youtube.thumbnail31MUyoAl8pE.path),
            title: 'DevFest Vienna 2013 - Gradle Build System (Martin Liersch)',
          ),
          YoutubeVideosDataServiceVideo(
            id: '_-Bvw8j7XLM',
            imageAssetPath: some(Assets.images.youtube.thumbnailBvw8j7XLM.path),
            title: 'droidcon Greece - Martin Liersch (Piracy on Android)',
          ),
          YoutubeVideosDataServiceVideo(
            id: '6kNvwk2F6LE',
            imageAssetPath:
                some(Assets.images.youtube.thumbnail6kNvwk2F6LE.path),
            title: 'DroidconIt - Martin Liersch',
          ),
          YoutubeVideosDataServiceVideo(
            id: 'xXHQBqlNk_I',
            imageAssetPath:
                some(Assets.images.youtube.thumbnailXXHQBqlNkI.path),
            title: 'DevFest Vienna 2015 - Piracy on Android (Martin Liersch)',
          ),
          YoutubeVideosDataServiceVideo(
            id: 'rAHYQIeo8-g',
            imageAssetPath:
                some(Assets.images.youtube.thumbnailRAHYQIeo8G.path),
            title: 'DevFest Istanbul 2015 - Piracy on Android',
          ),
          YoutubeVideosDataServiceVideo(
            id: 'MCFnD38PFwc',
            imageAssetPath:
                some(Assets.images.youtube.thumbnailMCFnD38PFwc.path),
            title: 'DevFest Constance 2013: Gradle Build System for Android',
          ),
          YoutubeVideosDataServiceVideo(
            id: 'nYJmXDPSn8Q',
            imageAssetPath:
                some(Assets.images.youtube.thumbnailNYJmXDPSn8Q.path),
            title:
                'Droidcon Italy 2017 // RxFireDroid: From Idea to MavenCentral/jCenter - Martin Liersch',
          ),
        ],
      );
}
