import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/constants.dart';
import 'package:goddchen_cv/cv/cv_navigation_service.dart';
import 'package:goddchen_cv/github_prs/github_prs_navigation_service.dart';
import 'package:goddchen_cv/hobbies/hobbies_navigation_service.dart';
import 'package:goddchen_cv/main_navigation_service.dart';
import 'package:goddchen_cv/portfolio/portfolio_navigation_service.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'navigation_service.g.dart';

@riverpod
NavigationServiceAggregator navigationService(final _) =>
    NavigationServiceImplementation();

abstract interface class NavigationServiceAggregator
    implements
        CvNavigationService,
        GithubPrsNavigationService,
        HobbiesNavigationService,
        MainNavigationService,
        PortfolioNavigationService,
        YoutubeVideosNavigationService {}

class NavigationServiceImplementation implements NavigationServiceAggregator {
  @override
  bool canPop() => optionOf(navigatorKey.currentState).fold(
        () => false,
        (final NavigatorState navigatorState) => navigatorState.canPop(),
      );

  @override
  void openUri({required final Uri uri}) => launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );

  @override
  void pop() => optionOf(navigatorKey.currentState).fold(
        () {},
        (final NavigatorState navigatorState) => navigatorState.pop(),
      );
}
