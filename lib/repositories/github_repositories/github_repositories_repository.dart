import 'package:github_search/models/repository_query/github_repository_query_model.dart';
import 'package:github_search/networking/models/github_repository_details/github_repository_details.dart';
import 'package:github_search/networking/models/issue/issue.dart';
import 'package:github_search/networking/models/paginated_list_response/paginated_list_response.dart';
import 'package:github_search/networking/requests/issues_query_request/issues_query_request.dart';

abstract class GithubRepositoriesRepository {
  Future<GithubRepositoryDetails> getRepository(GithubRepositoryQueryModel repositoryQueryModel);

  Future<PaginatedListResponse<Issue>> getRepositoryIssues(
    GithubRepositoryQueryModel repositoryQueryModel, {
    required IssuesQueryRequest queryRequest,
  });
}
