import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_pr_github_service.freezed.dart';

abstract interface class GithubPrGithubService {
  TaskEither<Object, GithubPrGithubServicePrData> getPrInfoTask({
    required final int number,
    required final String owner,
    required final String repo,
  });
}

@freezed
class GithubPrGithubServicePrData with _$GithubPrGithubServicePrData {
  const factory GithubPrGithubServicePrData({
    required final DateTime createdAt,
    required final Uri link,
    required final String title,
  }) = _GithubPrGithubServicePrData;
}
