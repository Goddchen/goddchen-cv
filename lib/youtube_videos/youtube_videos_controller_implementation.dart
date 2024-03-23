import 'package:causality/causality.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/grid/grid_model.dart';
import 'package:goddchen_cv/main.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_controller.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_data_service.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_model.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_navigation_service.dart';

class LoadYoutubeVideosCause extends Cause {}

class YoutubeVideosControllerImplementation implements YoutubeVideosController {
  final YoutubeVideosDataService _dataService;
  final YoutubeVideosNavigationService _navigationService;

  late final Effect _openYoutubeVideoEffect = Effect((final Cause cause) {
    if (cause case final OpenYoutubeVideoCause _) {
      openItem(item: cause.video);
    }
    return <Cause>[];
  });

  late final Effect _loadYoutubeVideosEffect = Effect((final _) async {
    YoutubeVideosModelUpdatedCause(YoutubeVideosModel(items: right(none())))
        .emit(universe: causalityUniverse);
    return <Cause>[
      await _dataService.videosTask
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
            (final Object error) => YoutubeVideosModelUpdatedCause(
              YoutubeVideosModel(items: left(error)),
            ),
            (final List<YoutubeVideosModelVideo> videos) =>
                YoutubeVideosModelUpdatedCause(
              YoutubeVideosModel(items: right(some(videos))),
            ),
          )
          .run(),
    ];
  });

  YoutubeVideosControllerImplementation({
    required final YoutubeVideosDataService dataService,
    required final YoutubeVideosNavigationService navigationService,
  })  : _dataService = dataService,
        _navigationService = navigationService {
    _loadYoutubeVideosEffect.observe(
      <Type>[
        LoadYoutubeVideosCause,
      ],
      universe: causalityUniverse,
    );
    _openYoutubeVideoEffect.observe(
      <Type>[
        OpenYoutubeVideoCause,
      ],
      universe: causalityUniverse,
    );
  }

  @override
  void openItem({required final YoutubeVideosModelVideo item}) =>
      item.action.fold(
        () {},
        (final GridModelItemAction action) => action.when(
          link: (final Uri link) => _navigationService.openLink(link: link),
          route: (final Uri route) => _navigationService.push(route: route),
        ),
      );
}
