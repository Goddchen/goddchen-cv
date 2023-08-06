import 'package:goddchen_cv/youtube_video/youtube_video_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'navigation_service.g.dart';

@riverpod
NavigationServiceAggregator navigationService(final _) =>
    NavigationServiceImplementation();

abstract class NavigationServiceAggregator
    implements YoutubeVideoNavigationService {}

class NavigationServiceImplementation implements NavigationServiceAggregator {
  @override
  void openUri({required final Uri uri}) => launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
}
