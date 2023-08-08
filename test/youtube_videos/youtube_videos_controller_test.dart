import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_controller_implementation.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_data_service.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_model.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_navigation_service.dart';
import 'package:mockito/mockito.dart';

import '../mocks.mocks.dart';

void main() {
  late YoutubeVideosDataService dataService;
  late YoutubeVideosNavigationService navigationService;

  YoutubeVideosControllerImplementation createTestController() =>
      youtubeVideosControllerImplementationProvider(
        dataService: dataService,
        navigationService: navigationService,
      ).notifier.read(ProviderContainer());

  setUp(() {
    dataService = MockDataServiceAggregator();
    navigationService = MockNavigationServiceAggregator();

    when(dataService.videosTask).thenReturn(
      TaskEither<Object, List<YoutubeVideosDataServiceVideo>>.of(
        <YoutubeVideosDataServiceVideo>[],
      ),
    );
  });

  test('openVideo(...) calls service', () {
    final Uri testLink = Uri.parse('test');
    createTestController().openVideo(
      video: YoutubeVideosModelVideo(
        id: 'test',
        imageAssetPath: none(),
        link: testLink,
        title: 'Test',
      ),
    );
    verify(
      navigationService.openUri(uri: testLink),
    ).called(1);
  });

  test('Loads data on init', () {
    createTestController();
    verify(dataService.videosTask).called(1);
  });
}
