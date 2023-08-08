import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_model.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_view.dart';
import 'package:mockito/mockito.dart';

import '../mocks.mocks.dart';

part 'youtube_videos_view_test.freezed.dart';

void main() {
  late MockYoutubeVideosController controller;

  setUp(() {
    controller = MockYoutubeVideosController();
  });

  Widget createTestWidget({
    final Option<YoutubeVideosModel> modelOverride = const None(),
  }) =>
      MaterialApp(
        home: YoutubeVideosView(
          controller: controller,
          model: modelOverride.getOrElse(
            () => YoutubeVideosModel(
              videos: right(
                some(
                  <YoutubeVideosModelVideo>[
                    YoutubeVideosModelVideo(
                      id: 'test',
                      imageAssetPath: none(),
                      link: Uri(),
                      title: 'Test',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  final ValueVariant<GridViewCardsVariant> gridViewCardsVariants =
      ValueVariant<GridViewCardsVariant>(
    <GridViewCardsVariant>{
      const GridViewCardsVariant(
        expectedNumberOfCardWidgets: 0,
        inputVideos: <YoutubeVideosModelVideo>[],
      ),
      GridViewCardsVariant(
        expectedNumberOfCardWidgets: 1,
        inputVideos: <YoutubeVideosModelVideo>[
          YoutubeVideosModelVideo(
            id: 'test',
            imageAssetPath: none(),
            link: Uri(),
            title: 'Test',
          ),
        ],
      ),
      GridViewCardsVariant(
        expectedNumberOfCardWidgets: 2,
        inputVideos: <YoutubeVideosModelVideo>[
          YoutubeVideosModelVideo(
            id: 'test',
            imageAssetPath: none(),
            link: Uri(),
            title: 'Test',
          ),
          YoutubeVideosModelVideo(
            id: 'test',
            imageAssetPath: none(),
            link: Uri(),
            title: 'Test',
          ),
        ],
      ),
    },
  );

  testWidgets(
    'View display GridView with correct number of Cards',
    variant: gridViewCardsVariants,
    (final WidgetTester widgetTester) async {
      await widgetTester.pumpWidget(
        createTestWidget(
          modelOverride: some(
            YoutubeVideosModel(
              videos: right(
                some(gridViewCardsVariants.currentValue!.inputVideos),
              ),
            ),
          ),
        ),
      );

      expect(
        find.byType(Card),
        findsNWidgets(
          gridViewCardsVariants.currentValue!.expectedNumberOfCardWidgets,
        ),
      );
    },
  );

  testWidgets(
    'Tapping a card calls controller',
    (final WidgetTester widgetTester) async {
      await widgetTester.pumpWidget(createTestWidget());

      await widgetTester.tap(find.byType(Card).first);

      verify(controller.openVideo(video: anyNamed('video'))).called(1);
    },
  );
}

@freezed
class GridViewCardsVariant with _$GridViewCardsVariant {
  const factory GridViewCardsVariant({
    required final int expectedNumberOfCardWidgets,
    required final List<YoutubeVideosModelVideo> inputVideos,
  }) = _GridViewCardsVariant;
}
