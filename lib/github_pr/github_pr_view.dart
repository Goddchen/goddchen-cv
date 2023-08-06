import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/gen/assets.gen.dart';
import 'package:goddchen_cv/github_pr/github_pr_controller.dart';
import 'package:goddchen_cv/github_pr/github_pr_model.dart';
import 'package:goddchen_cv/mvc/mvc_view.dart';

class GithubPrView extends MvcView<GithubPrModel, GithubPrController> {
  const GithubPrView({
    required super.controller,
    super.key,
    required super.model,
  });

  @override
  Widget build(final BuildContext context) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: model.pr
                  .toOption()
                  .flatMap((final Option<GithubPrModelPr> prOption) => prOption)
                  .fold(
                      () => null,
                      (final GithubPrModelPr pr) =>
                          () => controller.tapPr(pr: pr)),
              child: SizedBox(
                height: 160,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Center(
                    child: model.pr.build(
                      dataBuilder: (final GithubPrModelPr data) => Row(
                        children: <Widget>[
                          Assets.icons.github.pullRequest.svg(
                            height: 48,
                            width: 48,
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text('${data.link}'),
                                Text(data.title),
                                Text('${data.createdAt}'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      errorBuilder: (final Object error) => ErrorWidget(error),
                      loadingBuilder: () => const CircularProgressIndicator(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
