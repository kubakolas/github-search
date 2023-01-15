part of 'github_repositories_bloc.dart';

@freezed
class GithubRepositoriesEvent with _$GithubRepositoriesEvent {
  const factory GithubRepositoriesEvent.fetchRepositoriesPageRequested({
    required int page,
    required String query,
  }) = _FetchRepositoriesPageRequested;

  const factory GithubRepositoriesEvent.queryTextChanged() = _QueryTextChanged;
}
