import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/constants.dart';
import 'package:github_search/errors/app_error.dart';
import 'package:github_search/mappers/github_repository_mappers.dart';
import 'package:github_search/networking/models/github_repository/github_repository.dart';
import 'package:github_search/networking/models/paginated_list_response/paginated_list_response.dart';
import 'package:github_search/networking/requests/search_repositories_query_request/search_repositories_query_request.dart';
import 'package:github_search/pages/github_repositories/bloc/github_repositories_bloc.dart';
import 'package:github_search/repositories/search/search_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockSearchRepository extends Mock implements SearchRepository {}

void main() {
  late MockSearchRepository searchRepository;

  setUp(() {
    searchRepository = MockSearchRepository();
    registerFallbackValue(
      const SearchRepositoriesQueryRequest(
        page: 1,
        perPage: 10,
        query: 'flutter',
      ),
    );
  });

  tearDown(() {
    reset(searchRepository);
  });

  blocTest(
    'emits [] when no event is added',
    build: () => GithubRepositoriesBloc(
      searchRepository: searchRepository,
    ),
    expect: () => [],
  );

  group(
    'on fetchRepositoriesPageRequested event',
    () {
      final List<GithubRepository> mockedRepositories = List.generate(
        10,
        (index) => GithubRepository(
          id: index,
        ),
      );
      const dynamic mockedError = AppError.unknown();

      blocTest<GithubRepositoriesBloc, GithubRepositoriesState>(
        'if query is empty emits initial state',
        build: () => GithubRepositoriesBloc(
          searchRepository: searchRepository,
        ),
        act: (bloc) => bloc.add(
          const GithubRepositoriesEvent.fetchRepositoriesPageRequested(
            page: 1,
            query: '',
          ),
        ),
        expect: () => [
          const GithubRepositoriesState.initial(),
        ],
      );

      blocTest<GithubRepositoriesBloc, GithubRepositoriesState>(
        'if response is empty emits no results state',
        setUp: () {
          when(() => searchRepository.getRepositories(any())).thenAnswer(
            (_) async => PaginatedListResponse<GithubRepository>(
              headers: Headers(),
              items: [],
            ),
          );
        },
        build: () => GithubRepositoriesBloc(
          searchRepository: searchRepository,
        ),
        act: (bloc) => bloc.add(
          const GithubRepositoriesEvent.fetchRepositoriesPageRequested(
            page: 1,
            query: 'bloc',
          ),
        ),
        expect: () => [
          const GithubRepositoriesState.noResults(),
        ],
      );

      group('if response is not empty, emits success state', () {
        blocTest<GithubRepositoriesBloc, GithubRepositoriesState>(
          'page = 1, without next page',
          setUp: () {
            when(() => searchRepository.getRepositories(any())).thenAnswer(
              (_) async => PaginatedListResponse<GithubRepository>(
                headers: Headers(),
                items: mockedRepositories,
              ),
            );
          },
          build: () => GithubRepositoriesBloc(
            searchRepository: searchRepository,
          ),
          act: (bloc) => bloc.add(
            const GithubRepositoriesEvent.fetchRepositoriesPageRequested(
              page: 1,
              query: 'bloc',
            ),
          ),
          expect: () => [
            GithubRepositoriesState.fetchGithubRepositoriesPageSucesss(
              hasNextPage: false,
              nextPageNumber: 2,
              repositories: mockedRepositories.mapToModels(),
            ),
          ],
        );

        blocTest<GithubRepositoriesBloc, GithubRepositoriesState>(
          'page = 1, with next page',
          setUp: () {
            when(() => searchRepository.getRepositories(any())).thenAnswer(
              (_) async => PaginatedListResponse<GithubRepository>(
                headers: Headers.fromMap({
                  Constants.headers.link: [
                    Constants.headers.nextPageHeaderValue,
                  ],
                }),
                items: mockedRepositories,
              ),
            );
          },
          build: () => GithubRepositoriesBloc(
            searchRepository: searchRepository,
          ),
          act: (bloc) => bloc.add(
            const GithubRepositoriesEvent.fetchRepositoriesPageRequested(
              page: 1,
              query: 'bloc',
            ),
          ),
          expect: () => [
            GithubRepositoriesState.fetchGithubRepositoriesPageSucesss(
              hasNextPage: true,
              nextPageNumber: 2,
              repositories: mockedRepositories.mapToModels(),
            ),
          ],
        );

        blocTest<GithubRepositoriesBloc, GithubRepositoriesState>(
          'page = 2, with next page',
          setUp: () {
            when(() => searchRepository.getRepositories(any())).thenAnswer(
              (_) async => PaginatedListResponse<GithubRepository>(
                headers: Headers.fromMap({
                  Constants.headers.link: [
                    Constants.headers.nextPageHeaderValue,
                  ],
                }),
                items: mockedRepositories,
              ),
            );
          },
          build: () => GithubRepositoriesBloc(
            searchRepository: searchRepository,
          ),
          act: (bloc) => bloc.add(
            const GithubRepositoriesEvent.fetchRepositoriesPageRequested(
              page: 2,
              query: 'bloc',
            ),
          ),
          expect: () => [
            GithubRepositoriesState.fetchGithubRepositoriesPageSucesss(
              hasNextPage: true,
              nextPageNumber: 3,
              repositories: mockedRepositories.mapToModels(),
            ),
          ],
        );
      });

      blocTest<GithubRepositoriesBloc, GithubRepositoriesState>(
        'if throws error emits failure state',
        setUp: () {
          when(() => searchRepository.getRepositories(any())).thenThrow(mockedError);
        },
        build: () => GithubRepositoriesBloc(
          searchRepository: searchRepository,
        ),
        act: (bloc) => bloc.add(
          const GithubRepositoriesEvent.fetchRepositoriesPageRequested(
            page: 1,
            query: 'bloc',
          ),
        ),
        expect: () => [
          const GithubRepositoriesState.fetchGithubRepositoriesPageFailure(
            error: mockedError,
          ),
        ],
      );
    },
  );

  group('on queryTextChanged event', () {
    blocTest<GithubRepositoriesBloc, GithubRepositoriesState>(
      'emits query change state',
      build: () => GithubRepositoriesBloc(
        searchRepository: searchRepository,
      ),
      act: (bloc) => bloc.add(
        const GithubRepositoriesEvent.queryTextChanged(),
      ),
      expect: () => [
        const GithubRepositoriesState.queryTextChange(),
      ],
    );
  });
}
