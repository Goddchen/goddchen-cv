import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/grid/grid_model.dart';

part 'youtube_videos_model.freezed.dart';

@freezed
class YoutubeVideosModel
    with _$YoutubeVideosModel
    implements GridModel<YoutubeVideosModelVideo> {
  const factory YoutubeVideosModel({
    required final AsyncResult<List<YoutubeVideosModelVideo>> items,
  }) = _YoutubeVideosModel;
}

@freezed
class YoutubeVideosModelVideo
    with _$YoutubeVideosModelVideo
    implements GridModelItem {
  const factory YoutubeVideosModelVideo({
    required final Option<GridModelItemAction> action,
    @Default(None()) final Option<String> description,
    required final String id,
    required final Option<String> imageAssetPath,
    required final String title,
  }) = _YoutubeVideosModelVideo;
}
