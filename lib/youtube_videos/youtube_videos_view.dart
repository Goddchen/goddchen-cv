import 'package:flutter/material.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/mvc/mvc_view.dart';
import 'package:goddchen_cv/widgets/section.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_controller.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_model.dart';

class YoutubeVideosView
    extends MvcView<YoutubeVideosModel, YoutubeVideosController> {
  const YoutubeVideosView({
    super.key,
    required super.controller,
    required super.model,
  });

  @override
  Widget build(final BuildContext context) => Section(
        title: 'Youtube Videos',
        child: model.videos.build(
          dataBuilder: (final List<YoutubeVideosModelVideo> data) => Column(
            mainAxisSize: MainAxisSize.min,
            children: data
                .map(
                  (final YoutubeVideosModelVideo video) => _YoutubeVideo(
                    controller: controller,
                    video: video,
                  ),
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

class _YoutubeVideo extends StatelessWidget {
  final YoutubeVideosController _controller;
  final YoutubeVideosModelVideo _video;

  const _YoutubeVideo({
    required final YoutubeVideosController controller,
    required final YoutubeVideosModelVideo video,
  })  : _controller = controller,
        _video = video;

  @override
  Widget build(final BuildContext context) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: SizedBox(
          height: 160,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: <Widget>[
                ..._video.imageAssetPath.fold(
                  () => <Widget>[],
                  (final String imageAssetPath) => <Widget>[
                    Positioned.fill(
                      child: Image.asset(
                        imageAssetPath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Positioned.fill(
                  child: ColoredBox(
                    color:
                        Theme.of(context).colorScheme.surface.withOpacity(0.5),
                  ),
                ),
                Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: () => _controller.openVideo(video: _video),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Center(
                        child: Text(_video.title),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
