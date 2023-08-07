import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goddchen_cv/common.dart';
import 'package:fpdart/fpdart.dart';

part 'github_prs_model.freezed.dart';

@freezed
class GithubPrsModel with _$GithubPrsModel {
  const factory GithubPrsModel({
    required final AsyncResult<List<GithubPrsModelPr>> prs,
  }) = _GithubPrsModel;
}

@freezed
class GithubPrsModelPr with _$GithubPrsModelPr {
  const factory GithubPrsModelPr({
    required final Uri link,
    required final String title,
  }) = _GithubPrsModelPr;
}
