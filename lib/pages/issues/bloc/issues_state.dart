part of 'issues_bloc.dart';

@freezed
class IssuesState with _$IssuesState {
  const factory IssuesState.initial() = _Initial;

  const factory IssuesState.fetchIssuesPageSucesss({
    required bool hasNextPage,
    required List<IssueModel> issues,
    required int nextPageNumber,
  }) = _FetchIssuesPageSuccess;

  const factory IssuesState.fetchIssuesPageFailure({
    required dynamic error,
  }) = _FetchIssuesPageFailure;
}
