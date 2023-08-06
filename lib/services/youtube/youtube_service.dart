import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goddchen_cv/gen/assets.gen.dart';
import 'package:goddchen_cv/youtube_video/youtube_video_youtube_service.dart';
import 'package:goddchen_cv/youtube_videos/youtube_videos_youtube_service.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'youtube_service.freezed.dart';
part 'youtube_service.g.dart';

@riverpod
YoutubeServiceAggregator youtubeService(final _) =>
    YoutubeServiceImplementation();

@RestApi(baseUrl: 'https://www.googleapis.com/youtube/v3/')
abstract class YoutubeRestApi {
  factory YoutubeRestApi(final Dio dio, {final String baseUrl}) =
      _YoutubeRestApi;

  @GET('/videos')
  Future<YoutubeRestApiVideos> getVideo({
    @Query('id') required final String id,
    @Query('key')
    final String apiKey = 'AIzaSyClujsGzzGH6F-8LnosVEuPZ7_b2Vsu2hI',
    @Query('part') final String part = 'snippet',
  });
}

@freezed
class YoutubeRestApiVideos with _$YoutubeRestApiVideos {
  const factory YoutubeRestApiVideos({
    required final List<YoutubeRestApiVideosVideo> items,
  }) = _YoutubeRestApiVideos;

  factory YoutubeRestApiVideos.fromJson(final Map<String, dynamic> json) =>
      _$YoutubeRestApiVideosFromJson(json);
}

@freezed
class YoutubeRestApiVideosVideo with _$YoutubeRestApiVideosVideo {
  const factory YoutubeRestApiVideosVideo({
    required final YoutubeRestApiVideosVideoSnippet snippet,
  }) = _YoutubeRestApiVideosVideo;

  factory YoutubeRestApiVideosVideo.fromJson(final Map<String, dynamic> json) =>
      _$YoutubeRestApiVideosVideoFromJson(json);
}

@freezed
class YoutubeRestApiVideosVideoSnippet with _$YoutubeRestApiVideosVideoSnippet {
  const factory YoutubeRestApiVideosVideoSnippet({
    required final YoutubeRestApiVideosVideoSnippetThumbnails thumbnails,
    required final String title,
  }) = _YoutubeRestApiVideosVideoSnippet;

  factory YoutubeRestApiVideosVideoSnippet.fromJson(
          final Map<String, dynamic> json) =>
      _$YoutubeRestApiVideosVideoSnippetFromJson(json);
}

@freezed
class YoutubeRestApiVideosVideoSnippetThumbnail
    with _$YoutubeRestApiVideosVideoSnippetThumbnail {
  const factory YoutubeRestApiVideosVideoSnippetThumbnail({
    required final String url,
  }) = _YoutubeRestApiVideosVideoSnippetThumbnail;

  factory YoutubeRestApiVideosVideoSnippetThumbnail.fromJson(
          final Map<String, dynamic> json) =>
      _$YoutubeRestApiVideosVideoSnippetThumbnailFromJson(json);
}

@freezed
class YoutubeRestApiVideosVideoSnippetThumbnails
    with _$YoutubeRestApiVideosVideoSnippetThumbnails {
  const factory YoutubeRestApiVideosVideoSnippetThumbnails({
    required final YoutubeRestApiVideosVideoSnippetThumbnail standard,
  }) = _YoutubeRestApiVideosVideoSnippetThumbnails;

  factory YoutubeRestApiVideosVideoSnippetThumbnails.fromJson(
          final Map<String, dynamic> json) =>
      _$YoutubeRestApiVideosVideoSnippetThumbnailsFromJson(json);
}

abstract interface class YoutubeServiceAggregator
    implements YoutubeVideoYoutubeService, YoutubeVideosYoutubeService {}

class YoutubeServiceImplementation implements YoutubeServiceAggregator {
  final YoutubeRestApi _youtubeRestApi = YoutubeRestApi(Dio());

  @override
  TaskEither<Object, List<YoutubeVideosYoutubeServiceVideo>> get videosTask =>
      TaskEither<Object, List<YoutubeServiceVideoConfig>>.tryCatch(
        () async {
          final String jsonString =
              await rootBundle.loadString(Assets.data.youtubeVideos);
          final List<dynamic> videos = jsonDecode(jsonString);
          return videos
              .map((final dynamic video) =>
                  YoutubeServiceVideoConfig.fromJson(video))
              .toList();
        },
        (final Object error, final __) => error,
      ).map(
        (final List<YoutubeServiceVideoConfig> videos) => videos
            .map((final YoutubeServiceVideoConfig video) =>
                YoutubeVideosYoutubeServiceVideo(id: video.id))
            .toList(),
      );

  @override
  TaskEither<Object, YoutubeVideoYoutubeServiceVideo> videoTask(
          {required final String id}) =>
      TaskEither<Object, YoutubeVideoYoutubeServiceVideo>.tryCatch(
        () async {
          final YoutubeRestApiVideos videos =
              await _youtubeRestApi.getVideo(id: id);
          return YoutubeVideoYoutubeServiceVideo(
            link: Uri.parse('https://www.youtube.com/watch?v=$id'),
            thumbnail:
                Uri.parse(videos.items.first.snippet.thumbnails.standard.url),
            title: videos.items.first.snippet.title,
          );
        },
        (final Object error, final _) => error,
      );
}

@freezed
class YoutubeServiceVideoConfig with _$YoutubeServiceVideoConfig {
  const factory YoutubeServiceVideoConfig({
    required final String id,
  }) = _YoutubeServiceVideoConfig;

  factory YoutubeServiceVideoConfig.fromJson(final Map<String, dynamic> json) =>
      _$YoutubeServiceVideoConfigFromJson(json);
}
