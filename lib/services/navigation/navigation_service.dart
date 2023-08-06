import 'package:goddchen_cv/github_pr/github_pr_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'navigation_service.g.dart';

@riverpod
NavigationServiceAggregator navigationService(final _) =>
    NavigationServiceImplementation();

abstract interface class NavigationServiceAggregator
    implements GithubPrNavigationService {}

class NavigationServiceImplementation implements NavigationServiceAggregator {
  @override
  void openUri({required final Uri uri}) => launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
}
