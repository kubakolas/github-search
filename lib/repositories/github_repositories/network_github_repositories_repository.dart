import 'package:dio/dio.dart';
import 'package:github_search/models/repository_query/github_repository_query_model.dart';
import 'package:github_search/networking/api_client.dart';
import 'package:github_search/networking/endpoints.dart';
import 'package:github_search/networking/models/github_repository_details/github_repository_details.dart';
import 'package:github_search/networking/models/issue/issue.dart';
import 'package:github_search/networking/models/paginated_list_response/paginated_list_response.dart';
import 'package:github_search/networking/requests/issues_query_request/issues_query_request.dart';
import 'package:github_search/repositories/github_repositories/github_repositories_repository.dart';

class NetworkGithubRepositoriesRepository implements GithubRepositoriesRepository {
  final ApiClient apiClient;

  const NetworkGithubRepositoriesRepository({
    required this.apiClient,
  });

  @override
  Future<GithubRepositoryDetails> getRepository(GithubRepositoryQueryModel repositoryQueryModel) async {
    final String? ownerLogin = repositoryQueryModel.ownerLogin;
    final String? repositoryName = repositoryQueryModel.repositoryName;
    if (ownerLogin == null || repositoryName == null) throw ArgumentError();
    final Response response = await apiClient.get(
      Endpoints.repositories.repository(
        ownerName: ownerLogin,
        repositoryName: repositoryName,
      ),
    );
    return GithubRepositoryDetails.fromJson(response.data);
  }

  @override
  Future<PaginatedListResponse<Issue>> getRepositoryIssues(
    GithubRepositoryQueryModel repositoryQueryModel, {
    required IssuesQueryRequest queryRequest,
  }) async {
    final String? ownerLogin = repositoryQueryModel.ownerLogin;
    final String? repositoryName = repositoryQueryModel.repositoryName;
    if (ownerLogin == null || repositoryName == null) throw ArgumentError();
    final Response response = await apiClient.get(
      Endpoints.repositories.issues(
        ownerName: ownerLogin,
        repositoryName: repositoryName,
      ),
      queryParameters: queryRequest.toJson(),
    );
    final List<dynamic> data = response.data;
    return PaginatedListResponse<Issue>(
      headers: response.headers,
      items: data
          .map(
            (object) => Issue.fromJson(object as Map<String, dynamic>),
          )
          .toList(),
    );
  }
}
