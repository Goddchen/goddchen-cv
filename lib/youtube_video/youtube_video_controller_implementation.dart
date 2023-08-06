import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/youtube_video/youtube_video_controller.dart';
import 'package:goddchen_cv/youtube_video/youtube_video_model.dart';
import 'package:goddchen_cv/youtube_video/youtube_video_youtube_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'youtube_video_controller_implementation.g.dart';

@riverpod
class YoutubeVideoControllerImplementation
    extends _$YoutubeVideoControllerImplementation
    implements YoutubeVideoController {
  Task<void> get _initTask => youtubeService
      .videoTask(id: id)
      .map(
        (final YoutubeVideoYoutubeServiceVideo video) => YoutubeVideoModelVideo(
          thumbnail: video.thumbnail,
          title: video.title,
        ),
      )
      .match(
        (final Object error) => state = state.copyWith(video: left(error)),
        (final YoutubeVideoModelVideo video) =>
            state = state.copyWith(video: right(some(video))),
      );

  @override
  YoutubeVideoModel build({
    required final String id,
    required final YoutubeVideoYoutubeService youtubeService,
  }) {
    scheduleMicrotask(_initTask.run);
    return YoutubeVideoModel(video: right(none()));
  }

  @override
  void tapVideo({required final YoutubeVideoModelVideo video}) {}
}
