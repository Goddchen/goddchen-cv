import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goddchen_cv/common.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/grid/grid_model.dart';

part 'portfolio_model.freezed.dart';

@freezed
class PortfolioModel
    with _$PortfolioModel
    implements GridModel<PortfolioModelProject> {
  const factory PortfolioModel({
    required final AsyncResult<List<PortfolioModelProject>> items,
  }) = _PortfolioModel;
}

@freezed
class PortfolioModelProject
    with _$PortfolioModelProject
    implements GridModelItem {
  const factory PortfolioModelProject({
    required final Option<GridModelItemAction> action,
    @Default(None()) final Option<String> description,
    @Default(None()) final Option<String> imageAssetPath,
    @Default(BoxFit.cover) final BoxFit imageFit,
    @Default(EdgeInsets.all(0)) final EdgeInsets imagePadding,
    required final String title,
  }) = _PortfolioModelProject;
}
