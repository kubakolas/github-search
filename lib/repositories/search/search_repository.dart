import 'package:github_search/networking/models/github_repository/github_repository.dart';
import 'package:github_search/networking/models/paginated_list_response/paginated_list_response.dart';
import 'package:github_search/networking/requests/search_repositories_query_request/search_repositories_query_request.dart';

abstract class SearchRepository {
  Future<PaginatedListResponse<GithubRepository>> getRepositories(SearchRepositoriesQueryRequest queryRequest);
}
