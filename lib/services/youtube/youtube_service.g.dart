// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_YoutubeRestApiVideos _$$_YoutubeRestApiVideosFromJson(
        Map<String, dynamic> json) =>
    _$_YoutubeRestApiVideos(
      items: (json['items'] as List<dynamic>)
          .map((e) =>
              YoutubeRestApiVideosVideo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_YoutubeRestApiVideosToJson(
        _$_YoutubeRestApiVideos instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$_YoutubeRestApiVideosVideo _$$_YoutubeRestApiVideosVideoFromJson(
        Map<String, dynamic> json) =>
    _$_YoutubeRestApiVideosVideo(
      snippet: YoutubeRestApiVideosVideoSnippet.fromJson(
          json['snippet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_YoutubeRestApiVideosVideoToJson(
        _$_YoutubeRestApiVideosVideo instance) =>
    <String, dynamic>{
      'snippet': instance.snippet,
    };

_$_YoutubeRestApiVideosVideoSnippet
    _$$_YoutubeRestApiVideosVideoSnippetFromJson(Map<String, dynamic> json) =>
        _$_YoutubeRestApiVideosVideoSnippet(
          thumbnails: YoutubeRestApiVideosVideoSnippetThumbnails.fromJson(
              json['thumbnails'] as Map<String, dynamic>),
          title: json['title'] as String,
        );

Map<String, dynamic> _$$_YoutubeRestApiVideosVideoSnippetToJson(
        _$_YoutubeRestApiVideosVideoSnippet instance) =>
    <String, dynamic>{
      'thumbnails': instance.thumbnails,
      'title': instance.title,
    };

_$_YoutubeRestApiVideosVideoSnippetThumbnail
    _$$_YoutubeRestApiVideosVideoSnippetThumbnailFromJson(
            Map<String, dynamic> json) =>
        _$_YoutubeRestApiVideosVideoSnippetThumbnail(
          url: json['url'] as String,
        );

Map<String, dynamic> _$$_YoutubeRestApiVideosVideoSnippetThumbnailToJson(
        _$_YoutubeRestApiVideosVideoSnippetThumbnail instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$_YoutubeRestApiVideosVideoSnippetThumbnails
    _$$_YoutubeRestApiVideosVideoSnippetThumbnailsFromJson(
            Map<String, dynamic> json) =>
        _$_YoutubeRestApiVideosVideoSnippetThumbnails(
          standard: YoutubeRestApiVideosVideoSnippetThumbnail.fromJson(
              json['standard'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_YoutubeRestApiVideosVideoSnippetThumbnailsToJson(
        _$_YoutubeRestApiVideosVideoSnippetThumbnails instance) =>
    <String, dynamic>{
      'standard': instance.standard,
    };

_$_YoutubeServiceVideoConfig _$$_YoutubeServiceVideoConfigFromJson(
        Map<String, dynamic> json) =>
    _$_YoutubeServiceVideoConfig(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_YoutubeServiceVideoConfigToJson(
        _$_YoutubeServiceVideoConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _YoutubeRestApi implements YoutubeRestApi {
  _YoutubeRestApi(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://www.googleapis.com/youtube/v3/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<YoutubeRestApiVideos> getVideo({
    required String id,
    String apiKey = 'AIzaSyClujsGzzGH6F-8LnosVEuPZ7_b2Vsu2hI',
    String part = 'snippet',
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'id': id,
      r'key': apiKey,
      r'part': part,
    };
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<YoutubeRestApiVideos>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/videos',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = YoutubeRestApiVideos.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$youtubeServiceHash() => r'24d80e666c4de3c216e1e98706108aec4809dead';

/// See also [youtubeService].
@ProviderFor(youtubeService)
final youtubeServiceProvider =
    AutoDisposeProvider<YoutubeServiceAggregator>.internal(
  youtubeService,
  name: r'youtubeServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$youtubeServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef YoutubeServiceRef = AutoDisposeProviderRef<YoutubeServiceAggregator>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
