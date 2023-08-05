// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubRestApiGetPull _$$_GithubRestApiGetPullFromJson(
        Map<String, dynamic> json) =>
    _$_GithubRestApiGetPull(
      createdAt: DateTime.parse(json['created_at'] as String),
      link: json['html_url'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_GithubRestApiGetPullToJson(
        _$_GithubRestApiGetPull instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt.toIso8601String(),
      'html_url': instance.link,
      'title': instance.title,
    };

_$_GithubServicePrConfig _$$_GithubServicePrConfigFromJson(
        Map<String, dynamic> json) =>
    _$_GithubServicePrConfig(
      number: json['number'] as int,
      owner: json['owner'] as String,
      repo: json['repo'] as String,
    );

Map<String, dynamic> _$$_GithubServicePrConfigToJson(
        _$_GithubServicePrConfig instance) =>
    <String, dynamic>{
      'number': instance.number,
      'owner': instance.owner,
      'repo': instance.repo,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _GithubRestApi implements GithubRestApi {
  _GithubRestApi(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://api.github.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<GithubRestApiGetPull> getPull({
    required int number,
    required String owner,
    required String repo,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GithubRestApiGetPull>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/repos/${owner}/${repo}/pulls/${number}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = GithubRestApiGetPull.fromJson(_result.data!);
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

String _$githubServiceHash() => r'05073e11c2951d325aff83ae9c4cb3b98a78ec32';

/// See also [githubService].
@ProviderFor(githubService)
final githubServiceProvider =
    AutoDisposeProvider<GithubServiceAggregator>.internal(
  githubService,
  name: r'githubServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$githubServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GithubServiceRef = AutoDisposeProviderRef<GithubServiceAggregator>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
