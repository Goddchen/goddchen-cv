import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/constants.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_controller.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_model.dart';
import 'package:goddchen_cv/grid/grid_view.dart' as grid_view;

class YoutubeVideosView extends grid_view.GridView<YoutubeVideosModel,
    YoutubeVideosController, YoutubeVideosModelVideo> {
  YoutubeVideosView({
    super.key,
    required super.controller,
    required super.model,
  }) : super(
          itemBuilder: some(
            (final YoutubeVideosModelVideo item) =>
                _YoutubeVideo(controller: controller, video: item),
          ),
          seedColor: youtubeColor,
          title: 'Youtube Videos',
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
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: <Widget>[
              ..._video.imageAssetPath.fold(
                () => <Widget>[],
                (final String imageAssetPath) => <Widget>[
                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(imageAssetPath),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned.fill(
                child: ColoredBox(
                  color: Theme.of(context)
                      .colorScheme
                      .surfaceVariant
                      .withOpacity(0.7),
                ),
              ),
              Positioned.fill(
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: () => _controller.openItem(item: _video),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        _video.title,
                        textAlign: TextAlign.center,
                        style: optionOf(Theme.of(context).textTheme.titleLarge)
                            .map(
                              (final TextStyle textStyle) => textStyle.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant,
                              ),
                            )
                            .toNullable(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
