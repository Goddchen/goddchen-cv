import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_prs_github_service.freezed.dart';

abstract interface class GithubPrsGithubService {
  TaskEither<Object, List<GithubPrsGithubServicePr>> get prsTask;
}

@freezed
class GithubPrsGithubServicePr with _$GithubPrsGithubServicePr {
  const factory GithubPrsGithubServicePr({
    required final int number,
    required final String owner,
    required final String repo,
  }) = _GithubPrsGithubServicePr;
}
