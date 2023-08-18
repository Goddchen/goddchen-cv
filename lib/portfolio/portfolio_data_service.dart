import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_data_service.freezed.dart';

abstract interface class PortfolioDataService {
  TaskEither<Object, List<PortfolioDataServiceProject>> get projectsTask;
}

@freezed
class PortfolioDataServiceProject with _$PortfolioDataServiceProject {
  const factory PortfolioDataServiceProject({
    required final String description,
    @Default(None()) final Option<String> imageAssetPath,
    required final Uri link,
    required final String title,
  }) = _PortfolioDataServiceProject;
}
