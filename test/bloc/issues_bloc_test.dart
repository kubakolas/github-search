import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/constants.dart';
import 'package:github_search/errors/app_error.dart';
import 'package:github_search/mappers/issue_mappers.dart';
import 'package:github_search/models/repository_query/github_repository_query_model.dart';
import 'package:github_search/networking/models/issue/issue.dart';
import 'package:github_search/networking/models/issue/issue_state.dart';
import 'package:github_search/networking/models/paginated_list_response/paginated_list_response.dart';
import 'package:github_search/networking/requests/issues_query_request/issues_query_request.dart';
import 'package:github_search/pages/issues/bloc/issues_bloc.dart';
import 'package:github_search/pages/issues/issues_arguments.dart';
import 'package:github_search/repositories/github_repositories/github_repositories_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockGithubRepositoriesRepository extends Mock implements GithubRepositoriesRepository {}

void main() {
  const GithubRepositoryQueryModel sampleQueryModel = GithubRepositoryQueryModel(
    ownerLogin: 'jan',
    repositoryName: 'flutter',
  );
  late MockGithubRepositoriesRepository repositoriesRepository;

  setUp(() {
    repositoriesRepository = MockGithubRepositoriesRepository();
    registerFallbackValue(sampleQueryModel);
    registerFallbackValue(
      const IssuesQueryRequest(
        page: 1,
        perPage: 20,
        state: IssueState.all,
      ),
    );
  });

  tearDown(() {
    reset(repositoriesRepository);
  });

  group('on fetchIssuesPageRequested event', () {
    final List<Issue> mockedIssues = List.generate(
      10,
      (index) => Issue(
        number: index,
      ),
    );
    const dynamic mockedError = AppError.unknown();

    blocTest<IssuesBloc, IssuesState>(
      'if response succeed, page=1 and no next page',
      setUp: () {
        when(
          () => repositoriesRepository.getRepositoryIssues(
            any(),
            queryRequest: any(
              named: 'queryRequest',
            ),
          ),
        ).thenAnswer(
          (_) async => PaginatedListResponse<Issue>(
            headers: Headers(),
            items: mockedIssues,
          ),
        );
      },
      build: () => IssuesBloc(
        arguments: const IssuesArguments(
          initialIssuesState: IssueState.all,
          repositoryQueryModel: sampleQueryModel,
        ),
        repositoriesRepository: repositoriesRepository,
      ),
      act: (bloc) => bloc.add(
        const IssuesEvent.fetchIssuesPageRequested(
          page: 1,
        ),
      ),
      expect: () => [
        IssuesState.fetchIssuesPageSucesss(
          hasNextPage: false,
          issues: mockedIssues.mapToModels(),
          nextPageNumber: 2,
        ),
      ],
    );

    blocTest<IssuesBloc, IssuesState>(
      'if response succeed, page=1 and has next page',
      setUp: () {
        when(
          () => repositoriesRepository.getRepositoryIssues(
            any(),
            queryRequest: any(
              named: 'queryRequest',
            ),
          ),
        ).thenAnswer(
          (_) async => PaginatedListResponse<Issue>(
            headers: Headers.fromMap({
              Constants.headers.link: [
                Constants.headers.nextPageHeaderValue,
              ],
            }),
            items: mockedIssues,
          ),
        );
      },
      build: () => IssuesBloc(
        arguments: const IssuesArguments(
          initialIssuesState: IssueState.all,
          repositoryQueryModel: sampleQueryModel,
        ),
        repositoriesRepository: repositoriesRepository,
      ),
      act: (bloc) => bloc.add(
        const IssuesEvent.fetchIssuesPageRequested(
          page: 1,
        ),
      ),
      expect: () => [
        IssuesState.fetchIssuesPageSucesss(
          hasNextPage: true,
          issues: mockedIssues.mapToModels(),
          nextPageNumber: 2,
        ),
      ],
    );

    blocTest<IssuesBloc, IssuesState>(
      'if response succeed, page=10 and has next page',
      setUp: () {
        when(
          () => repositoriesRepository.getRepositoryIssues(
            any(),
            queryRequest: any(
              named: 'queryRequest',
            ),
          ),
        ).thenAnswer(
          (_) async => PaginatedListResponse<Issue>(
            headers: Headers.fromMap({
              Constants.headers.link: [
                Constants.headers.nextPageHeaderValue,
              ],
            }),
            items: mockedIssues,
          ),
        );
      },
      build: () => IssuesBloc(
        arguments: const IssuesArguments(
          initialIssuesState: IssueState.all,
          repositoryQueryModel: sampleQueryModel,
        ),
        repositoriesRepository: repositoriesRepository,
      ),
      act: (bloc) => bloc.add(
        const IssuesEvent.fetchIssuesPageRequested(
          page: 10,
        ),
      ),
      expect: () => [
        IssuesState.fetchIssuesPageSucesss(
          hasNextPage: true,
          issues: mockedIssues.mapToModels(),
          nextPageNumber: 11,
        ),
      ],
    );

    blocTest<IssuesBloc, IssuesState>(
      'if throws, emits failure state',
      setUp: () {
        when(
          () => repositoriesRepository.getRepositoryIssues(
            any(),
            queryRequest: any(
              named: 'queryRequest',
            ),
          ),
        ).thenThrow(mockedError);
      },
      build: () => IssuesBloc(
        arguments: const IssuesArguments(
          initialIssuesState: IssueState.all,
          repositoryQueryModel: sampleQueryModel,
        ),
        repositoriesRepository: repositoriesRepository,
      ),
      act: (bloc) => bloc.add(
        const IssuesEvent.fetchIssuesPageRequested(
          page: 1,
        ),
      ),
      expect: () => [
        const IssuesState.fetchIssuesPageFailure(
          error: mockedError,
        ),
      ],
    );
  });
}
