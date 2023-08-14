import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_prs_data_service.freezed.dart';

abstract interface class GithubPrsDataService {
  TaskEither<Object, List<GithubPrsDataServicePr>> get prsTask;
}

@freezed
class GithubPrsDataServicePr with _$GithubPrsDataServicePr {
  const factory GithubPrsDataServicePr({
    required final Uri link,
    required final String repo,
    required final String title,
    required final String user,
  }) = _GithubPrsDataServicePr;
}
