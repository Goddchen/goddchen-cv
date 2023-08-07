import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_videos_data_service.freezed.dart';

abstract interface class YoutubeVideosDataService {
  TaskEither<Object, List<YoutubeVideosDataServiceVideo>> get videosTask;
}

@freezed
class YoutubeVideosDataServiceVideo with _$YoutubeVideosDataServiceVideo {
  const factory YoutubeVideosDataServiceVideo({
    required final String id,
    required final Option<String> imageAssetPath,
    required final String title,
  }) = _YoutubeVideosDataServiceVideo;
}
