import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_video_youtube_service.freezed.dart';

abstract interface class YoutubeVideoYoutubeService {
  TaskEither<Object, YoutubeVideoYoutubeServiceVideo> videoTask({
    required final String id,
  });
}

@freezed
class YoutubeVideoYoutubeServiceVideo with _$YoutubeVideoYoutubeServiceVideo {
  const factory YoutubeVideoYoutubeServiceVideo({
    required final Uri thumbnail,
    required final String title,
  }) = _YoutubeVideoYoutubeServiceVideo;
}
