import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/github_pr/github_pr_controller.dart';
import 'package:goddchen_cv/github_pr/github_pr_github_service.dart';
import 'package:goddchen_cv/github_pr/github_pr_model.dart';
import 'package:goddchen_cv/github_pr/github_pr_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'github_pr_controller_implementation.g.dart';

@riverpod
class GithubPrControllerImplementation
    extends _$GithubPrControllerImplementation implements GithubPrController {
  @override
  GithubPrModel build({
    required final GithubPrGithubService githubService,
    required final GithubPrNavigationService navigationService,
    required final int number,
    required final String owner,
    required final String repo,
  }) {
    scheduleMicrotask(_initTask.run);
    return GithubPrModel(
      number: number,
      owner: owner,
      pr: right(none()),
      repo: repo,
    );
  }

  Task<void> get _initTask => githubService
      .getPrInfoTask(
        number: number,
        owner: owner,
        repo: repo,
      )
      .match(
        (final Object error) => state = state.copyWith(pr: left(error)),
        (final GithubPrGithubServicePrData pr) => state = state.copyWith(
          pr: right(
            some(
              GithubPrModelPr(
                createdAt: pr.createdAt,
                link: pr.link,
                title: pr.title,
              ),
            ),
          ),
        ),
      );

  @override
  void tapPr({required final GithubPrModelPr pr}) =>
      navigationService.openUri(uri: pr.link);
}
