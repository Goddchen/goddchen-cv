import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/mvc/mvc_view.dart';
import 'package:goddchen_cv/services/navigation/navigation_service.dart';
import 'package:goddchen_cv/services/youtube/youtube_service.dart';
import 'package:goddchen_cv/widgets/section.dart';
import 'package:goddchen_cv/youtube_video/youtube_video_controller_implementation.dart';
import 'package:goddchen_cv/youtube_video/youtube_video_view.dart';
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
          dataBuilder: (final List<YoutubeVideoModelVideo> data) => Column(
            mainAxisSize: MainAxisSize.min,
            children: data
                .map(
                  (final YoutubeVideoModelVideo video) => Consumer(
                    builder: (final _, final WidgetRef ref, final ___) {
                      final YoutubeVideoControllerImplementationProvider
                          provider =
                          youtubeVideoControllerImplementationProvider(
                        id: video.id,
                        navigationService: ref.watch(navigationServiceProvider),
                        youtubeService: ref.watch(youtubeServiceProvider),
                      );
                      return YoutubeVideoView(
                        controller: ref.watch(provider.notifier),
                        model: ref.watch(provider),
                      );
                    },
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
