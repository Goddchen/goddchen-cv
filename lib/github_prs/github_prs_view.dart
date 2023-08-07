import 'package:flutter/material.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/constants.dart';
import 'package:goddchen_cv/gen/assets.gen.dart';
import 'package:goddchen_cv/github_prs/github_prs_controller.dart';
import 'package:goddchen_cv/github_prs/github_prs_model.dart';
import 'package:goddchen_cv/mvc/mvc_view.dart';
import 'package:goddchen_cv/widgets/section.dart';

class GithubPrsView extends MvcView<GithubPrsModel, GithubPrsController> {
  const GithubPrsView({
    super.key,
    required super.controller,
    required super.model,
  });

  @override
  Widget build(final BuildContext context) => Section(
        seedColor: githubColor,
        title: 'Github PRs',
        child: model.prs.build(
          dataBuilder: (final List<GithubPrsModelPr> data) => GridView.extent(
            childAspectRatio: gridViewChildAspectRatio,
            crossAxisSpacing: gridViewHorizontalSpacing,
            mainAxisSpacing: gridViewVerticalSpacing,
            maxCrossAxisExtent: gridViewMaxExtent,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: data
                .map(
                  (final GithubPrsModelPr pr) => _Pr(
                    controller: controller,
                    pr: pr,
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

class _Pr extends StatelessWidget {
  final GithubPrsController _controller;
  final GithubPrsModelPr _pr;

  const _Pr({
    required final GithubPrsController controller,
    required final GithubPrsModelPr pr,
  })  : _controller = controller,
        _pr = pr;

  @override
  Widget build(final BuildContext context) => Card(
        color: Theme.of(context).colorScheme.surfaceVariant,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: () => _controller.openPr(pr: _pr),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Row(
                    children: <Widget>[
                      Assets.icons.github.pullRequest.svg(
                        height: 48,
                        width: 48,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                '${_pr.link}',
                                style: Theme.of(context).textTheme.titleLarge,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                _pr.title,
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
