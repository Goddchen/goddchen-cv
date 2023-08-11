import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goddchen_cv/common.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/grid/grid_model.dart';

part 'github_prs_model.freezed.dart';

@freezed
class GithubPrsModel
    with _$GithubPrsModel
    implements GridModel<GithubPrsModelPr> {
  const factory GithubPrsModel({
    required final AsyncResult<List<GithubPrsModelPr>> items,
  }) = _GithubPrsModel;
}

@freezed
class GithubPrsModelPr with _$GithubPrsModelPr implements GridModelItem {
  const factory GithubPrsModelPr({
    required final Option<GridModelItemAction> action,
    @Default(None()) final Option<String> imageAssetPath,
    required final String title,
  }) = _GithubPrsModelPr;
}
