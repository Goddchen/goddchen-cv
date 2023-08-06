import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_videos_youtube_service.freezed.dart';

abstract interface class YoutubeVideosYoutubeService {
  TaskEither<Object, List<YoutubeVideosYoutubeServiceVideo>> get videosTask;
}

@freezed
class YoutubeVideosYoutubeServiceVideo with _$YoutubeVideosYoutubeServiceVideo {
  const factory YoutubeVideosYoutubeServiceVideo({required final String id}) =
      _YoutubeVideosYoutubeServiceVideo;
}
