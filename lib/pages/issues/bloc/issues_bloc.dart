import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search/constants.dart';
import 'package:github_search/mappers/issue_mappers.dart';
import 'package:github_search/models/issue/issue_model.dart';
import 'package:github_search/networking/models/issue/issue.dart';
import 'package:github_search/networking/models/issue/issue_state.dart';
import 'package:github_search/networking/models/paginated_list_response/paginated_list_response.dart';
import 'package:github_search/networking/requests/issues_query_request/issues_query_request.dart';
import 'package:github_search/pages/issues/issues_arguments.dart';
import 'package:github_search/repositories/github_repositories/github_repositories_repository.dart';

part 'issues_event.dart';
part 'issues_state.dart';
part 'issues_bloc.freezed.dart';

class IssuesBloc extends Bloc<IssuesEvent, IssuesState> {
  final IssuesArguments arguments;
  final GithubRepositoriesRepository repositoriesRepository;

  IssuesBloc({
    required this.arguments,
    required this.repositoriesRepository,
  }) : super(const _Initial()) {
    on<_FetchIssuesPageRequested>(_onFetchIssuesPageRequested);
  }

  Future<void> _onFetchIssuesPageRequested(
    _FetchIssuesPageRequested event,
    Emitter<IssuesState> emit,
  ) async {
    try {
      final PaginatedListResponse<Issue> response = await repositoriesRepository.getRepositoryIssues(
        arguments.repositoryQueryModel,
        queryRequest: _getQueryRequest(
          page: event.page,
          state: arguments.initialIssuesState,
        ),
      );
      emit(
        IssuesState.fetchIssuesPageSucesss(
          hasNextPage: response.hasNextPage,
          issues: response.items.mapToModels(),
          nextPageNumber: event.page + 1,
        ),
      );
    } catch (error) {
      emit(
        IssuesState.fetchIssuesPageFailure(
          error: error,
        ),
      );
    }
  }

  IssuesQueryRequest _getQueryRequest({
    required int page,
    required IssueState state,
  }) {
    return IssuesQueryRequest(
      page: page,
      perPage: Constants.pagination.defaultPageSize,
      state: state,
    );
  }
}
