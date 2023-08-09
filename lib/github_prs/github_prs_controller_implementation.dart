import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/github_prs/github_prs_controller.dart';
import 'package:goddchen_cv/github_prs/github_prs_data_service.dart';
import 'package:goddchen_cv/github_prs/github_prs_model.dart';
import 'package:goddchen_cv/github_prs/github_prs_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'github_prs_controller_implementation.g.dart';

@riverpod
class GithubPrsControllerImplementation
    extends _$GithubPrsControllerImplementation implements GithubPrsController {
  Task<void> get _initTask => dataService.prsTask
      .map(
        (final List<GithubPrsDataServicePr> prs) => prs
            .map(
              (final GithubPrsDataServicePr pr) => GithubPrsModelPr(
                link: pr.link,
                title: pr.title,
              ),
            )
            .toList(),
      )
      .match(
        (final Object error) => state = state.copyWith(items: left(error)),
        (final List<GithubPrsModelPr> prs) =>
            state = state.copyWith(items: right(some(prs))),
      );

  @override
  GithubPrsModel build({
    required final GithubPrsDataService dataService,
    required final GithubPrsNavigationService navigationService,
  }) {
    scheduleMicrotask(_initTask.run);
    return GithubPrsModel(items: right(none()));
  }

  @override
  void openItem({required final GithubPrsModelPr item}) =>
      navigationService.openUri(uri: item.link);
}
