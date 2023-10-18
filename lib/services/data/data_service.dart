import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/cv/cv_data_service.dart';
import 'package:goddchen_cv/gen/assets.gen.dart';
import 'package:goddchen_cv/generated/locale_keys.g.dart';
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
            description: some(LocaleKeys.cv_me_description.tr()),
            title: LocaleKeys.cv_me.tr(),
          ),
          CvDataServiceItem(
            link: some(Uri.parse('tel:+4917663787245')),
            title: LocaleKeys.cv_contact_via_phone.tr(),
          ),
          CvDataServiceItem(
            link: some(Uri.parse('mailto:martin.liersch@gmx.de')),
            title: LocaleKeys.cv_contact_via_email.tr(),
          ),
          CvDataServiceItem(
            description: some(
              <String>[
                'Flutter',
                'Android',
                'iOS',
                'fastlane',
                'REST',
                'GraphQL',
                'Spring Boot',
                'GCP',
                'AWS',
                'Git',
              ].join(', '),
            ),
            title: LocaleKeys.cv_technologies.tr(),
          ),
          CvDataServiceItem(
            description: some(
              <String>[
                'Dart',
                'Kotlin',
                'Java',
                'C#',
                'JavaScript',
                'SQL',
                'Bash',
                'Go',
                'Rust',
                'HTML',
              ].join(', '),
            ),
            title: LocaleKeys.cv_programming_languages.tr(),
          ),
          CvDataServiceItem(
            description: some(
              <String>[
                'riverpod',
                'dio',
                'fpdart',
                'go_router',
                'beamer',
                'freezed',
                'retrofit',
                'mockito',
                'bloc',
                'graphq',
                'openapi_generator',
                'hive',
                'isar',
                'just_audio',
                'rxdart',
              ].join(', '),
            ),
            title: LocaleKeys.cv_flutter_packages.tr(),
          ),
          CvDataServiceItem(
            description: some(
              <String>[
                'Visual Studio Code',
                'Android Studio',
                'Xcode',
                'Linux',
                'WSL',
                'Docker',
              ].join(', '),
            ),
            title: LocaleKeys.cv_software.tr(),
          ),
          CvDataServiceItem(
            description: some(LocaleKeys.cv_realschule_description.tr()),
            from: some(DateTime(1995, 1, 1)),
            title: LocaleKeys.cv_realschule.tr(),
            until: some(DateTime(2001, 8, 1)),
          ),
          CvDataServiceItem(
            description: some(LocaleKeys.cv_gymnasium_description.tr()),
            from: some(DateTime(2001, 1, 1)),
            title: LocaleKeys.cv_gymnasium.tr(),
            until: some(DateTime(2004, 1, 1)),
          ),
          CvDataServiceItem(
            description: some(LocaleKeys.cv_zivildienst_description.tr()),
            from: some(DateTime(2004, 1, 1)),
            title: LocaleKeys.cv_zivildienst.tr(),
            until: some(DateTime(2005, 1, 1)),
          ),
          CvDataServiceItem(
            description: some(LocaleKeys.cv_bachelor_description.tr()),
            from: some(DateTime(2005, 1, 1)),
            title: LocaleKeys.cv_bachelor.tr(),
            until: some(DateTime(2008, 1, 1)),
          ),
          CvDataServiceItem(
            description: some(LocaleKeys.cv_master_description.tr()),
            from: some(DateTime(2008, 1, 1)),
            title: LocaleKeys.cv_master.tr(),
            until: some(DateTime(2011, 1, 1)),
          ),
          CvDataServiceItem(
            description: some(
              LocaleKeys.cv_wissenschaftlicher_mitarbeiter_description.tr(),
            ),
            from: some(DateTime(2008, 1, 1)),
            title: LocaleKeys.cv_wissenschaftlicher_mitarbeiter.tr(),
            until: some(DateTime(2011, 1, 1)),
          ),
          CvDataServiceItem(
            description: some(LocaleKeys.cv_freelancer_description.tr()),
            from: some(DateTime(2010, 1, 1)),
            title: LocaleKeys.cv_freelancer.tr(),
            until: some(DateTime(2018, 8, 31)),
          ),
          CvDataServiceItem(
            description: some(LocaleKeys.cv_gdg_description.tr()),
            from: some(DateTime(2013, 1, 1)),
            title: LocaleKeys.cv_gdg.tr(),
          ),
          CvDataServiceItem(
            description: some(LocaleKeys.cv_papierprintit_description.tr()),
            from: some(DateTime(2014, 10, 1)),
            title: LocaleKeys.cv_papierprintit.tr(),
            until: some(DateTime(2015, 9, 30)),
          ),
          CvDataServiceItem(
            description: some(LocaleKeys.cv_formigas_description.tr()),
            from: some(DateTime(2018, 9, 1)),
            title: LocaleKeys.cv_formigas.tr(),
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
          HobbiesDataServiceHobby(
            action: HobbiesDataServiceHobbyAction.route(route: lolRoute),
            imageAssetPath: some(Assets.images.hobbies.lol.title.path),
            imageFit: BoxFit.contain,
            imagePadding: const EdgeInsets.all(32),
            title: 'League of Legends',
          ),
          HobbiesDataServiceHobby(
            action: HobbiesDataServiceHobbyAction.route(route: kspRoute),
            imageAssetPath: some(Assets.images.hobbies.ksp.title.path),
            imageFit: BoxFit.contain,
            imagePadding: const EdgeInsets.all(32),
            title: 'Kerbal Space Program',
          ),
        ],
      );

  @override
  TaskEither<Object, List<PortfolioDataServiceProject>> get projectsTask =>
      TaskEither<Object, List<PortfolioDataServiceProject>>.of(
        <PortfolioDataServiceProject>[
          PortfolioDataServiceProject(
            description: 'My GitHub profile',
            imageAssetPath: some(Assets.images.portfolio.github.path),
            imageFit: BoxFit.contain,
            imagePadding: const EdgeInsets.all(64),
            link: Uri.parse('https://github.com/Goddchen'),
            title: 'GitHub',
          ),
          PortfolioDataServiceProject(
            description: 'My StackOverflow profile',
            imageAssetPath:
                some(Assets.images.portfolio.stackOverflowBadge.path),
            imageFit: BoxFit.contain,
            imagePadding: const EdgeInsets.all(32),
            link: Uri.parse('https://stackoverflow.com/users/373138/goddchen'),
            title: 'StackOverflow',
          ),
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
            title: 'flutter_native_log_handler',
          ),
          PortfolioDataServiceProject(
            description:
                'Use OpenAI\'s ChatGPT to suggest conventional commit messages for your currently staged changes.',
            link: Uri.parse('https://pub.dev/packages/gpt_commit_messages'),
            title: 'gpt_commit_messages',
          ),
        ],
      );

  @override
  TaskEither<Object, List<GithubPrsDataServicePr>> get prsTask =>
      TaskEither<Object, List<GithubPrsDataServicePr>>.of(
        <GithubPrsDataServicePr>[
          GithubPrsDataServicePr(
            link: Uri.parse('https://github.com/mkobuolys/flutter_deck/pull/28'),
            repo: 'flutter_deck',
            title: 'feat: add optional custom footer text',
            user: 'mkobuolys',
          ),
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
