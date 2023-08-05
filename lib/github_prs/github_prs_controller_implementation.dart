import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/github_prs/github_prs_controller.dart';
import 'package:goddchen_cv/github_prs/github_prs_github_service.dart';
import 'package:goddchen_cv/github_prs/github_prs_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'github_prs_controller_implementation.g.dart';

@riverpod
class GithubPrsControllerImplementation
    extends _$GithubPrsControllerImplementation implements GithubPrsController {
  Task<void> get _initTask => githubService.prsTask
      .map(
        (final List<GithubPrsGithubServicePr> prs) => prs
            .map(
              (final GithubPrsGithubServicePr pr) => GithubPrsModelPr(
                number: pr.number,
                owner: pr.owner,
                repo: pr.repo,
              ),
            )
            .toList(),
      )
      .match(
        (final Object error) => state = state.copyWith(prs: left(error)),
        (final List<GithubPrsModelPr> prs) =>
            state = state.copyWith(prs: right(some(prs))),
      );

  @override
  GithubPrsModel build({
    required final GithubPrsGithubService githubService,
  }) {
    scheduleMicrotask(_initTask.run);
    return GithubPrsModel(prs: right(none()));
  }
}
