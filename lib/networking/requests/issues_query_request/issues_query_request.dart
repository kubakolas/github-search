import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search/networking/models/issue/issue_state.dart';

part 'issues_query_request.g.dart';

@JsonSerializable(
  createToJson: true,
)
class IssuesQueryRequest {
  final int page;
  final int perPage;
  final IssueState state;

  const IssuesQueryRequest({
    required this.page,
    required this.perPage,
    required this.state,
  });

  Map<String, dynamic> toJson() => _$IssuesQueryRequestToJson(this);
}
