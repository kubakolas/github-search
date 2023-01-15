import 'package:github_search/networking/models/issue/issue_state.dart';
import 'package:json_annotation/json_annotation.dart';

part 'issue.g.dart';

@JsonSerializable()
class Issue {
  @JsonKey(
    name: 'comments',
  )
  final int? commentsNumber;
  final DateTime? createdAt;
  final int? number;
  @JsonKey(
    unknownEnumValue: JsonKey.nullForUndefinedEnumValue,
  )
  final IssueState? state;
  final String? title;

  const Issue({
    this.commentsNumber,
    this.createdAt,
    this.number,
    this.state,
    this.title,
  });

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);
}
