import 'package:equatable/equatable.dart';
import 'package:github_search/networking/models/issue/issue_state.dart';

class IssueModel extends Equatable {
  final int? commentsNumber;
  final DateTime? createdAt;
  final int? number;
  final IssueState? state;
  final String? title;

  bool get hasAnyComments => (commentsNumber ?? 0) > 0;

  const IssueModel({
    this.commentsNumber,
    this.createdAt,
    this.number,
    this.state,
    this.title,
  });

  @override
  List<Object?> get props => [
        createdAt,
        number,
      ];
}
