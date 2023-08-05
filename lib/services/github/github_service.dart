import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goddchen_cv/gen/assets.gen.dart';
import 'package:goddchen_cv/github_pr/github_pr_github_service.dart';
import 'package:goddchen_cv/github_prs/github_prs_github_service.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'github_service.freezed.dart';
part 'github_service.g.dart';

@riverpod
GithubServiceAggregator githubService(final _) => GithubServiceImplementation();

@RestApi(baseUrl: 'https://api.github.com')
abstract class GithubRestApi {
  factory GithubRestApi(final Dio dio, {final String baseUrl}) = _GithubRestApi;

  @GET('/repos/{owner}/{repo}/pulls/{number}')
  Future<GithubRestApiGetPull> getPull({
    @Path() required final int number,
    @Path() required final String owner,
    @Path() required final String repo,
  });
}

@freezed
class GithubRestApiGetPull with _$GithubRestApiGetPull {
  const factory GithubRestApiGetPull({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'html_url') required final String link,
    required final String title,
  }) = _GithubRestApiGetPull;

  factory GithubRestApiGetPull.fromJson(final Map<String, dynamic> json) =>
      _$GithubRestApiGetPullFromJson(json);
}

abstract interface class GithubServiceAggregator
    implements GithubPrGithubService, GithubPrsGithubService {}

class GithubServiceImplementation implements GithubServiceAggregator {
  final GithubRestApi _githubRestApi = GithubRestApi(Dio());

  @override
  TaskEither<Object, List<GithubPrsGithubServicePr>> get prsTask =>
      TaskEither<Object, List<GithubPrsGithubServicePr>>.tryCatch(
        () async {
          final String jsonString = await rootBundle.loadString(Assets.prs);
          final List<dynamic> iterable = jsonDecode(jsonString);
          return iterable
              .map(
                (final pr) => GithubServicePrConfig.fromJson(pr),
              )
              .map(
                (final GithubServicePrConfig pr) => GithubPrsGithubServicePr(
                  number: pr.number,
                  owner: pr.owner,
                  repo: pr.repo,
                ),
              )
              .toList();
        },
        (final Object error, final __) => error,
      );

  @override
  TaskEither<Object, GithubPrGithubServicePrData> getPrInfoTask({
    required final int number,
    required final String owner,
    required final String repo,
  }) =>
      TaskEither<Object, GithubPrGithubServicePrData>.Do((final $) async {
        final GithubRestApiGetPull getPull = await $(
          TaskEither<Object, GithubRestApiGetPull>.tryCatch(
              () async => _githubRestApi.getPull(
                  number: number, owner: owner, repo: repo),
              (final error, final __) => error),
        );
        return GithubPrGithubServicePrData(
          createdAt: getPull.createdAt,
          link: Uri.parse(getPull.link),
          title: getPull.title,
        );
      });
}

@freezed
class GithubServicePrConfig with _$GithubServicePrConfig {
  const factory GithubServicePrConfig({
    required final int number,
    required final String owner,
    required final String repo,
  }) = _GithubServicePrConfig;

  factory GithubServicePrConfig.fromJson(final Map<String, dynamic> json) =>
      _$GithubServicePrConfigFromJson(json);
}
