import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/github_pr/github_pr_controller_implementation.dart';
import 'package:goddchen_cv/github_pr/github_pr_view.dart';
import 'package:goddchen_cv/github_prs/github_prs_controller.dart';
import 'package:goddchen_cv/github_prs/github_prs_model.dart';
import 'package:goddchen_cv/mvc/mvc_view.dart';
import 'package:goddchen_cv/services/github/github_service.dart';
import 'package:goddchen_cv/widgets/section.dart';

class GithubPrsView extends MvcView<GithubPrsModel, GithubPrsController> {
  const GithubPrsView({
    super.key,
    required super.controller,
    required super.model,
  });

  @override
  Widget build(final BuildContext context) => Section(
        title: 'Github PRs',
        child: model.prs.build(
          dataBuilder: (final List<GithubPrsModelPr> data) => ListView(
            shrinkWrap: true,
            children: data
                .map(
                  (final GithubPrsModelPr pr) => Consumer(
                    builder: (final _, final ref, final __) {
                      final provider = GithubPrControllerImplementationProvider(
                        githubService: ref.watch(githubServiceProvider),
                        number: pr.number,
                        owner: pr.owner,
                        repo: pr.repo,
                      );
                      return GithubPrView(
                        controller: ref.watch(provider.notifier),
                        model: ref.watch(provider),
                      );
                    },
                  ),
                )
                .toList(),
          ),
          errorBuilder: (final _) => const Center(
            child: Text('Error loading prs'),
          ),
          loadingBuilder: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
}
