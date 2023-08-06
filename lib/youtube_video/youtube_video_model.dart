import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goddchen_cv/common.dart';

part 'youtube_video_model.freezed.dart';

@freezed
class YoutubeVideoModel with _$YoutubeVideoModel {
  const factory YoutubeVideoModel({
    required final AsyncResult<YoutubeVideoModelVideo> video,
  }) = _YoutubeVideoModel;
}

@freezed
class YoutubeVideoModelVideo with _$YoutubeVideoModelVideo {
  const factory YoutubeVideoModelVideo({
    required final Uri thumbnail,
    required final String title,
  }) = _YoutubeVideoModelVideo;
}
