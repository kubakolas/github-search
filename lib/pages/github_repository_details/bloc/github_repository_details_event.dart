part of 'github_repository_details_bloc.dart';

@freezed
class GithubRepositoryDetailsEvent with _$GithubRepositoryDetailsEvent {
  const factory GithubRepositoryDetailsEvent.fetchRepositoryDetailsRequsted() = _FetchRepositoryDetailsRequested;
}
