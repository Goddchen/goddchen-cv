import 'package:flutter/material.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/mvc/mvc_view.dart';
import 'package:goddchen_cv/widgets/section.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_controller.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_model.dart';

class YoutubeVideosView
    extends MvcView<YoutubeVideosModel, YoutubeVideosController> {
  final Widget Function(YoutubeVideosModelVideo video) _videoBuilder;

  const YoutubeVideosView({
    super.key,
    required super.controller,
    required super.model,
    required final Widget Function(YoutubeVideosModelVideo video) videoBuilder,
  }) : _videoBuilder = videoBuilder;

  @override
  Widget build(final BuildContext context) => Section(
        title: 'Youtube Videos',
        child: model.videos.build(
          dataBuilder: (final List<YoutubeVideosModelVideo> data) => Column(
            mainAxisSize: MainAxisSize.min,
            children: data
                .map(
                  (final YoutubeVideosModelVideo video) => _videoBuilder(video),
                )
                .toList(),
          ),
          errorBuilder: (final _) => const Center(
            child: Text('Error getting Youtube videos'),
          ),
          loadingBuilder: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
}
