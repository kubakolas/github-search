part of 'github_repositories_bloc.dart';

@freezed
class GithubRepositoriesState with _$GithubRepositoriesState {
  const factory GithubRepositoriesState.initial() = _Initial;

  const factory GithubRepositoriesState.noResults() = _FetchGithubRepositoriesNoResults;

  const factory GithubRepositoriesState.queryTextChange() = _QueryTextChange;

  const factory GithubRepositoriesState.fetchGithubRepositoriesPageSucesss({
    required bool hasNextPage,
    required int nextPageNumber,
    required List<GithubRepositoryModel> repositories,
  }) = _FetchGithubRepositoriesPageSuccess;

  const factory GithubRepositoriesState.fetchGithubRepositoriesPageFailure({
    required dynamic error,
  }) = _FetchGithubRepositoriesPageFailure;
}
