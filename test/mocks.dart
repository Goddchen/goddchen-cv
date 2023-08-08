import 'package:goddchen_cv/cv/cv_controller.dart';
import 'package:goddchen_cv/hobbies/hobbies_controller.dart';
import 'package:goddchen_cv/services/data/data_service.dart';
import 'package:goddchen_cv/services/navigation/navigation_service.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_controller.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  <Type>[
    CvController,
    DataServiceAggregator,
    HobbiesController,
    NavigationServiceAggregator,
    YoutubeVideosController,
  ],
)
class GeneratedMocks {}
