import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/common.dart';

part 'youtube_videos_model.freezed.dart';

@freezed
class YoutubeVideoModelVideo with _$YoutubeVideoModelVideo {
  const factory YoutubeVideoModelVideo({
    required final String id,
  }) = _YoutubeVideoModelVideo;
}

@freezed
class YoutubeVideosModel with _$YoutubeVideosModel {
  const factory YoutubeVideosModel({
    required final AsyncResult<List<YoutubeVideoModelVideo>> videos,
  }) = _YoutubeVideosModel;
}
