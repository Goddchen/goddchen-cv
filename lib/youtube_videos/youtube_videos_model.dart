import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/common.dart';

part 'youtube_videos_model.freezed.dart';

@freezed
class YoutubeVideosModelVideo with _$YoutubeVideosModelVideo {
  const factory YoutubeVideosModelVideo({
    required final String id,
    required final Option<String> imageAssetPath,
    required final Uri link,
    required final String title,
  }) = _YoutubeVideosModelVideo;
}

@freezed
class YoutubeVideosModel with _$YoutubeVideosModel {
  const factory YoutubeVideosModel({
    required final AsyncResult<List<YoutubeVideosModelVideo>> videos,
  }) = _YoutubeVideosModel;
}
