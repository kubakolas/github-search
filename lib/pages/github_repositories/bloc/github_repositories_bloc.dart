import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search/constants.dart';
import 'package:github_search/models/github_repository/github_repository_model.dart';
import 'package:github_search/networking/models/paginated_list_response/paginated_list_response.dart';
import 'package:github_search/networking/models/github_repository/github_repository.dart';
import 'package:github_search/networking/requests/search_repositories_query_request/search_repositories_query_request.dart';
import 'package:github_search/repositories/search/search_repository.dart';
import 'package:github_search/mappers/github_repository_mappers.dart';
import 'package:rxdart/rxdart.dart';

part 'github_repositories_event.dart';
part 'github_repositories_state.dart';
part 'github_repositories_bloc.freezed.dart';

class GithubRepositoriesBloc extends Bloc<GithubRepositoriesEvent, GithubRepositoriesState> {
  final SearchRepository searchRepository;

  GithubRepositoriesBloc({
    required this.searchRepository,
  }) : super(const _Initial()) {
    on<_FetchRepositoriesPageRequested>(
      _onFetchRepositoriesPageRequested,
      transformer: sequential(),
    );
    on<_QueryTextChanged>(
      _onQueryTextChanged,
      transformer: (events, mapper) => events
          .debounceTime(
            const Duration(
              milliseconds: 500,
            ),
          )
          .switchMap(mapper),
    );
  }

  Future<void> _onFetchRepositoriesPageRequested(
    _FetchRepositoriesPageRequested event,
    Emitter<GithubRepositoriesState> emit,
  ) async {
    try {
      final String formattedQuery = _getFormattedQuery(event.query);
      if (formattedQuery.isEmpty) {
        emit(
          const GithubRepositoriesState.initial(),
        );
        return;
      }
      final PaginatedListResponse<GithubRepository> response = await searchRepository.getRepositories(
        _getQueryRequest(
          page: event.page,
          query: formattedQuery,
        ),
      );
      final List<GithubRepositoryModel> repositories = response.items.mapToModels();
      if (repositories.isEmpty) {
        emit(
          const GithubRepositoriesState.noResults(),
        );
        return;
      }
      emit(
        GithubRepositoriesState.fetchGithubRepositoriesPageSucesss(
          hasNextPage: response.hasNextPage,
          nextPageNumber: event.page + 1,
          repositories: response.items.mapToModels(),
        ),
      );
    } catch (error) {
      emit(
        GithubRepositoriesState.fetchGithubRepositoriesPageFailure(
          error: error,
        ),
      );
    }
  }

  Future<void> _onQueryTextChanged(
    _QueryTextChanged event,
    Emitter<GithubRepositoriesState> emit,
  ) async {
    emit(
      const GithubRepositoriesState.queryTextChange(),
    );
  }

  String _getFormattedQuery(String query) {
    return query.trim();
  }

  SearchRepositoriesQueryRequest _getQueryRequest({
    required int page,
    required String query,
  }) {
    return SearchRepositoriesQueryRequest(
      query: query,
      page: page,
      perPage: Constants.pagination.defaultPageSize,
    );
  }
}
