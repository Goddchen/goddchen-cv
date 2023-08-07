import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goddchen_cv/common.dart';
import 'package:fpdart/fpdart.dart';

part 'portfolio_model.freezed.dart';

@freezed
class PortfolioModel with _$PortfolioModel {
  const factory PortfolioModel({
    required final AsyncResult<List<PortfolioModelProject>> projects,
  }) = _PortfolioModel;
}

@freezed
class PortfolioModelProject with _$PortfolioModelProject {
  const factory PortfolioModelProject({
    required final String description,
    required final Uri link,
    required final String title,
  }) = _PortfolioModelProject;
}
