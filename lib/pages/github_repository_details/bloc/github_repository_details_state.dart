part of 'github_repository_details_bloc.dart';

@freezed
class GithubRepositoryDetailsState with _$GithubRepositoryDetailsState {
  const factory GithubRepositoryDetailsState.initial() = _Initial;

  const factory GithubRepositoryDetailsState.fetchRepositoryDetailsInProgress() = _FetchRepositoryDetailsInprogress;

  const factory GithubRepositoryDetailsState.fetchRepositoryDetailsSuccess(GithubRepositoryDetailsModel repository) =
      _FetchRepositoryDetailsSuccess;

  const factory GithubRepositoryDetailsState.fetchRepositoryDetailsFailure(dynamic error) =
      _FetchRepositoryDetailsFailure;
}
