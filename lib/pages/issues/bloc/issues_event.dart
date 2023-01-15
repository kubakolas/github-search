part of 'issues_bloc.dart';

@freezed
class IssuesEvent with _$IssuesEvent {
  const factory IssuesEvent.fetchIssuesPageRequested({
    required int page,
  }) = _FetchIssuesPageRequested;
}
