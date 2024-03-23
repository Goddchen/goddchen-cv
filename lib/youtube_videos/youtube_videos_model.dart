import 'package:causality/causality.dart';
import 'package:flutter/widgets.dart';
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
    @Default(BoxFit.cover) final BoxFit imageFit,
    @Default(EdgeInsets.all(0)) final EdgeInsets imagePadding,
    required final String title,
  }) = _YoutubeVideosModelVideo;
}

class YoutubeVideosModelUpdatedCause extends Cause {
  final YoutubeVideosModel model;

  YoutubeVideosModelUpdatedCause(this.model);
}

class OpenYoutubeVideoCause extends Cause {
  final YoutubeVideosModelVideo video;

  OpenYoutubeVideoCause(this.video);
}
