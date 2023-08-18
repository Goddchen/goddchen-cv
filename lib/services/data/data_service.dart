import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/cv/cv_data_service.dart';
import 'package:goddchen_cv/gen/assets.gen.dart';
import 'package:goddchen_cv/github_prs/github_prs_data_service.dart';
import 'package:goddchen_cv/hobbies/hobbies_data_service.dart';
import 'package:goddchen_cv/portfolio/portfolio_data_service.dart';
import 'package:goddchen_cv/services/navigation/routes.dart';
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
            description: none(),
            from: DateTime(2023, 1, 1),
            link: none(),
            title: 'Realschule Blumberg',
            until: some(DateTime(2023, 8, 1)),
          ),
          CvDataServiceItem(
            description: none(),
            from: DateTime(2023, 1, 1),
            link: none(),
            title: 'Wirtschaftsgymansium Donaueschingen',
            until: some(DateTime(2023, 8, 1)),
          ),
          CvDataServiceItem(
            description: none(),
            from: DateTime(2023, 1, 1),
            link: none(),
            title: 'Zivildienst',
            until: some(DateTime(2023, 8, 1)),
          ),
          CvDataServiceItem(
            description: none(),
            from: DateTime(2023, 1, 1),
            link: none(),
            title: 'BSc Software Engineering - HTWG Konstanz',
            until: some(DateTime(2023, 8, 1)),
          ),
          CvDataServiceItem(
            description: none(),
            from: DateTime(2023, 1, 1),
            link: none(),
            title: 'MSc Informatik - HTWG Konstanz',
            until: some(DateTime(2023, 8, 1)),
          ),
          CvDataServiceItem(
            description: none(),
            from: DateTime(2023, 1, 1),
            link: none(),
            title: 'Wissenschaftlicher Mitarbeiter - HTWG Konstanz',
            until: some(DateTime(2023, 8, 1)),
          ),
          CvDataServiceItem(
            description: none(),
            from: DateTime(2023, 1, 1),
            link: none(),
            title: 'Freelancer - Android Development',
            until: some(DateTime(2023, 8, 1)),
          ),
          CvDataServiceItem(
            description: some('Mobile Developer - Android'),
            from: DateTime(2014, 10, 1),
            link: none(),
            title: 'papierprintit GmbH',
            until: some(DateTime(2015, 9, 30)),
          ),
          CvDataServiceItem(
            description: some('Senior Software Architect'),
            from: DateTime(2018, 9, 1),
            link: none(),
            title: 'formigas GmbH',
            until: some(DateTime(2023, 9, 30)),
          ),
        ],
      );

  @override
  TaskEither<Object, List<HobbiesDataServiceHobby>> get hobbiesTask =>
      TaskEither<Object, List<HobbiesDataServiceHobby>>.of(
        <HobbiesDataServiceHobby>[
          HobbiesDataServiceHobby(
            action: HobbiesDataServiceHobbyAction.route(route: dogSportRoute),
            imageAssetPath: some(Assets.images.hobbies.dogSport.title.path),
            title: 'Dog Sport',
          ),
          HobbiesDataServiceHobby(
            action: HobbiesDataServiceHobbyAction.route(route: igpRoute),
            imageAssetPath: some(Assets.images.hobbies.igp.title.path),
            title: 'Dog Sport: IGP',
          ),
        ],
      );

  @override
  TaskEither<Object, List<PortfolioDataServiceProject>> get projectsTask =>
      TaskEither<Object, List<PortfolioDataServiceProject>>.of(
        <PortfolioDataServiceProject>[
          PortfolioDataServiceProject(
            description:
                'Implementation of The Remote Framebuffer Protocol (RFC 6143, aka VNC protocol).',
            link: Uri.parse('https://pub.dev/packages/dart_rfb'),
            title: 'dart_rfb',
          ),
          PortfolioDataServiceProject(
            description:
                'A VNC / Remote Framebuffer / RFC 6143 client purely written in Dart/Flutter.',
            link: Uri.parse('https://pub.dev/packages/flutter_rfb'),
            title: 'flutter_rfb',
          ),
          PortfolioDataServiceProject(
            description: 'Listen to Android and iOS logs.',
            link: Uri.parse(
              'https://pub.dev/packages/flutter_native_log_handler',
            ),
            title: 'flutter_native_log_handler ',
          ),
          PortfolioDataServiceProject(
            description:
                'Use OpenAI\'s ChatGPT to suggest conventional commit messages for your currently staged changes.',
            link: Uri.parse('https://pub.dev/packages/gpt_commit_messages'),
            title: 'gpt_commit_messages ',
          ),
        ],
      );

  @override
  TaskEither<Object, List<GithubPrsDataServicePr>> get prsTask =>
      TaskEither<Object, List<GithubPrsDataServicePr>>.of(
        <GithubPrsDataServicePr>[
          GithubPrsDataServicePr(
            link: Uri.parse('https://github.com/mkobuolys/flutter_deck/pull/1'),
            repo: 'flutter_deck',
            title: 'Add code highlight widget',
            user: 'mkobuolys',
          ),
          GithubPrsDataServicePr(
            link: Uri.parse('https://github.com/flutter/packages/pull/4341'),
            repo: 'packages',
            title:
                'go_router: docs: fix typo in StatefulShellRoute.indexedStack(...) docs',
            user: 'flutter',
          ),
          GithubPrsDataServicePr(
            link: Uri.parse(
              'https://github.com/gdg-berlin-android/ZeBadge/pull/107',
            ),
            repo: 'ZeBadge',
            title: 'Run tests on PRs',
            user: 'gdg-berlin-android',
          ),
          GithubPrsDataServicePr(
            link: Uri.parse(
              'https://github.com/cirruslabs/docker-images-flutter/pull/273',
            ),
            repo: 'docker-images-flutter',
            title: 'Upgrade to Flutter 3.10.1 and 3.11.0-12.0.pre',
            user: 'cirruslabs',
          ),
          GithubPrsDataServicePr(
            link: Uri.parse('https://github.com/dart-lang/async/pull/243'),
            repo: 'async',
            title: 'docs: fix typo in CancelableOperation.fromFuture(...) docs',
            user: 'dart-lang',
          ),
          GithubPrsDataServicePr(
            link: Uri.parse('https://github.com/flutter/tests/pull/202'),
            repo: 'tests',
            title: 'add dart_rfb',
            user: 'flutter',
          ),
          GithubPrsDataServicePr(
            link: Uri.parse('https://github.com/flutter/tests/pull/201'),
            repo: 'tests',
            title: 'add flutter_rfb',
            user: 'flutter',
          ),
          GithubPrsDataServicePr(
            link: Uri.parse('https://github.com/flutter/flutter/pull/106511'),
            repo: 'flutter',
            title: 'Fix typo in painting.TextStyle.merge docs',
            user: 'flutter',
          ),
          GithubPrsDataServicePr(
            link: Uri.parse('https://github.com/slovnicki/beamer/pull/500'),
            repo: 'beamer',
            title:
                'Fix: popToNamed(...), need to break from the while loop when entry found',
            user: 'slovnicki',
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
