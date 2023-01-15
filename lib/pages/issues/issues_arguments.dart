import 'package:github_search/models/repository_query/github_repository_query_model.dart';
import 'package:github_search/networking/models/issue/issue_state.dart';

class IssuesArguments {
  final IssueState initialIssuesState;
  final GithubRepositoryQueryModel repositoryQueryModel;

  const IssuesArguments({
    required this.initialIssuesState,
    required this.repositoryQueryModel,
  });
}
