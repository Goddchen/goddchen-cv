import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goddchen_cv/common.dart';

part 'github_pr_model.freezed.dart';

@freezed
class GithubPrModel with _$GithubPrModel {
  const factory GithubPrModel({
    required final int number,
    required final String owner,
    required final AsyncResult<GithubPrModelPr> pr,
    required final String repo,
  }) = _GithubPrModel;
}

@freezed
class GithubPrModelPr with _$GithubPrModelPr {
  const factory GithubPrModelPr({
    required final DateTime createdAt,
    required final Uri link,
    required final String title,
  }) = _GithubPrModelPr;
}
