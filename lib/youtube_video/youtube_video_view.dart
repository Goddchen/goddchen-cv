import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/mvc/mvc_view.dart';
import 'package:goddchen_cv/youtube_video/youtube_video_controller.dart';
import 'package:goddchen_cv/youtube_video/youtube_video_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class YoutubeVideoView
    extends MvcView<YoutubeVideoModel, YoutubeVideoController> {
  const YoutubeVideoView({
    super.key,
    required super.controller,
    required super.model,
  });

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
                ...model.video
                    .toOption()
                    .flatMap(
                      (final Option<YoutubeVideoModelVideo> videoOption) =>
                          videoOption,
                    )
                    .fold(
                      () => <Widget>[],
                      (final YoutubeVideoModelVideo video) => <Widget>[
                        Positioned.fill(
                          child: CachedNetworkImage(
                            imageUrl: video.thumbnail.toString(),
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
                    onTap: model.video
                        .toOption()
                        .flatMap(
                          (
                            final Option<YoutubeVideoModelVideo> videoOption,
                          ) =>
                              videoOption,
                        )
                        .fold(
                          () => null,
                          (final YoutubeVideoModelVideo video) =>
                              () => controller.tapVideo(video: video),
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Center(
                        child: model.video.build(
                          dataBuilder: (final YoutubeVideoModelVideo data) =>
                              Text(data.title),
                          errorBuilder: (final _) =>
                              const Text('Error loading video'),
                          loadingBuilder: () =>
                              const CircularProgressIndicator(),
                        ),
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
