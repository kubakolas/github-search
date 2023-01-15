import 'package:dio/dio.dart';
import 'package:github_search/networking/api_client.dart';
import 'package:github_search/networking/endpoints.dart';
import 'package:github_search/networking/models/github_repository/github_repository.dart';
import 'package:github_search/networking/models/paginated_list_response/paginated_list_response.dart';
import 'package:github_search/networking/models/search_list_response/search_list_response.dart';
import 'package:github_search/networking/requests/search_repositories_query_request/search_repositories_query_request.dart';
import 'package:github_search/repositories/search/search_repository.dart';

class NetworkSearchRepository implements SearchRepository {
  final ApiClient apiClient;

  const NetworkSearchRepository({
    required this.apiClient,
  });

  @override
  Future<PaginatedListResponse<GithubRepository>> getRepositories(SearchRepositoriesQueryRequest queryRequest) async {
    final Response response = await apiClient.get(
      Endpoints.search.repositories,
      queryParameters: queryRequest.toJson(),
    );
    final SearchListResponse<GithubRepository> searchListResponse =
        SearchListResponse.fromJson(response.data, GithubRepository.fromJsonObject);
    return PaginatedListResponse(
      headers: response.headers,
      items: searchListResponse.items,
    );
  }
}
