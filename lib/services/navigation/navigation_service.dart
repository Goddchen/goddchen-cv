import 'package:go_router/go_router.dart';
import 'package:goddchen_cv/cv/cv_navigation_service.dart';
import 'package:goddchen_cv/github_prs/github_prs_navigation_service.dart';
import 'package:goddchen_cv/hobbies/hobbies_navigation_service.dart';
import 'package:goddchen_cv/hobbies/ksp/hobby_ksp_navigation_service.dart';
import 'package:goddchen_cv/hobbies/lol/hobby_lol_navigation_service.dart';
import 'package:goddchen_cv/home/home_navigation_service.dart';
import 'package:goddchen_cv/main_navigation_service.dart';
import 'package:goddchen_cv/portfolio/portfolio_navigation_service.dart';
import 'package:goddchen_cv/services/navigation/go_router.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'navigation_service.g.dart';

@Riverpod(keepAlive: true)
NavigationServiceAggregator navigationService(final NavigationServiceRef ref) =>
    GoRouterNavigationService(goRouter: ref.watch(goRouterProvider));

class GoRouterNavigationService implements NavigationServiceAggregator {
  final GoRouter _goRouter;

  GoRouterNavigationService({
    required final GoRouter goRouter,
  }) : _goRouter = goRouter;

  @override
  bool canPop() => _goRouter.canPop();

  @override
  void push({required final Uri route}) {
    _goRouter.push(route.toString());
    _goRouter.refresh();
  }

  @override
  void openLink({required final Uri link}) => launchUrl(
        link,
        mode: LaunchMode.externalApplication,
      );

  @override
  void pop() => _goRouter.pop();
}

abstract interface class NavigationServiceAggregator
    implements
        CvNavigationService,
        GithubPrsNavigationService,
        HobbiesNavigationService,
        HobbyKspNavigationService,
        HobbyLolNavigationService,
        HomeNavigationService,
        MainNavigationService,
        PortfolioNavigationService,
        YoutubeVideosNavigationService {}
