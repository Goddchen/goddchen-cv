import 'package:flutter/material.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/github_prs/github_prs_controller.dart';
import 'package:goddchen_cv/github_prs/github_prs_model.dart';
import 'package:goddchen_cv/mvc/mvc_view.dart';
import 'package:goddchen_cv/widgets/section.dart';

class GithubPrsView extends MvcView<GithubPrsModel, GithubPrsController> {
  final Widget Function(GithubPrsModelPr pr) _prBuilder;

  const GithubPrsView({
    super.key,
    required super.controller,
    required super.model,
    required final Widget Function(GithubPrsModelPr pr) prBuilder,
  }) : _prBuilder = prBuilder;

  @override
  Widget build(final BuildContext context) => Section(
        title: 'Github PRs',
        child: model.prs.build(
          dataBuilder: (final List<GithubPrsModelPr> data) => Column(
            mainAxisSize: MainAxisSize.min,
            children: data
                .map((final GithubPrsModelPr pr) => _prBuilder(pr))
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
