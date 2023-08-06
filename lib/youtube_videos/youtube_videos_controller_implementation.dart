import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_controller.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_model.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_youtube_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'youtube_videos_controller_implementation.g.dart';

@riverpod
class YoutubeVideosControllerImplementation
    extends _$YoutubeVideosControllerImplementation
    implements YoutubeVideosController {
  Task<void> get _initTask => youtubeService.videosTask
      .map((final List<YoutubeVideosYoutubeServiceVideo> videos) => videos
          .map((final YoutubeVideosYoutubeServiceVideo video) =>
              YoutubeVideosModelVideo(id: video.id))
          .toList())
      .match(
        (final Object error) => state = state.copyWith(videos: left(error)),
        (final List<YoutubeVideosModelVideo> videos) =>
            state = state.copyWith(videos: right(some(videos))),
      );

  @override
  YoutubeVideosModel build({
    required final YoutubeVideosYoutubeService youtubeService,
  }) {
    scheduleMicrotask(_initTask.run);
    return YoutubeVideosModel(videos: right(none()));
  }
}
