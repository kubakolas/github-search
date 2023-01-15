import 'package:github_search/models/issue/issue_model.dart';
import 'package:github_search/extensions/list_extensions.dart';
import 'package:github_search/networking/models/issue/issue.dart';

extension IssueMappers on Issue {
  IssueModel mapToModel() => IssueModel(
        commentsNumber: commentsNumber,
        createdAt: createdAt,
        number: number,
        state: state,
        title: title,
      );
}

extension IssuesListMappers on List<Issue?>? {
  List<IssueModel> mapToModels() => orEmpty()
      .map(
        (issue) => issue?.mapToModel(),
      )
      .toList()
      .filterNotNull();
}
