import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/grid/grid_model.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_controller.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_data_service.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_model.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'youtube_videos_controller_implementation.g.dart';

@riverpod
class YoutubeVideosControllerImplementation
    extends _$YoutubeVideosControllerImplementation
    implements YoutubeVideosController {
  Task<void> get _initTask => dataService.videosTask
      .map(
        (final List<YoutubeVideosDataServiceVideo> videos) => videos
            .map(
              (final YoutubeVideosDataServiceVideo video) =>
                  YoutubeVideosModelVideo(
                action: some(
                  GridModelItemAction.link(
                    link: Uri.parse(
                      'https://www.youtube.com/watch?v=${video.id}',
                    ),
                  ),
                ),
                id: video.id,
                imageAssetPath: video.imageAssetPath,
                title: video.title,
              ),
            )
            .toList(),
      )
      .match(
        (final Object error) => state = state.copyWith(items: left(error)),
        (final List<YoutubeVideosModelVideo> videos) =>
            state = state.copyWith(items: right(some(videos))),
      );

  @override
  YoutubeVideosModel build({
    required final YoutubeVideosNavigationService navigationService,
    required final YoutubeVideosDataService dataService,
  }) {
    scheduleMicrotask(_initTask.run);
    return YoutubeVideosModel(items: right(none()));
  }

  @override
  void openItem({required final YoutubeVideosModelVideo item}) =>
      item.action.fold(
        () {},
        (final GridModelItemAction action) => action.when(
          link: (final Uri link) => navigationService.openLink(link: link),
          route: (final Uri route) => navigationService.push(route: route),
        ),
      );
}
