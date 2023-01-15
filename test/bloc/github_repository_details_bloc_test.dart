import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/errors/app_error.dart';
import 'package:github_search/mappers/github_repository_details_mappers.dart';
import 'package:github_search/models/repository_query/github_repository_query_model.dart';
import 'package:github_search/networking/models/github_repository_details/github_repository_details.dart';
import 'package:github_search/pages/github_repository_details/bloc/github_repository_details_bloc.dart';
import 'package:github_search/pages/github_repository_details/github_repository_details_arguments.dart';
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
  });

  tearDown(() {
    reset(repositoriesRepository);
  });

  blocTest(
    'emits [] when no event is added',
    build: () => GithubRepositoryDetailsBloc(
      arguments: const GithubRepositoryDetailsArguments(
        repositoryQueryModel: sampleQueryModel,
      ),
      repositoriesRepository: repositoriesRepository,
    ),
    expect: () => [],
  );

  group('on fetchRepositoryDetailsRequested event', () {
    const dynamic mockedError = AppError.unknown();

    blocTest<GithubRepositoryDetailsBloc, GithubRepositoryDetailsState>(
      'if response succeed, emits success state',
      setUp: () {
        when(() => repositoriesRepository.getRepository(any())).thenAnswer(
          (_) async => const GithubRepositoryDetails(
            id: 10,
          ),
        );
      },
      build: () => GithubRepositoryDetailsBloc(
        arguments: const GithubRepositoryDetailsArguments(
          repositoryQueryModel: GithubRepositoryQueryModel(
            ownerLogin: 'jan',
            repositoryName: 'flutter',
          ),
        ),
        repositoriesRepository: repositoriesRepository,
      ),
      act: (bloc) => bloc.add(
        const GithubRepositoryDetailsEvent.fetchRepositoryDetailsRequsted(),
      ),
      expect: () => [
        const GithubRepositoryDetailsState.fetchRepositoryDetailsInProgress(),
        GithubRepositoryDetailsState.fetchRepositoryDetailsSuccess(
          const GithubRepositoryDetails(
            id: 10,
          ).mapToModel(),
        ),
      ],
    );

    blocTest<GithubRepositoryDetailsBloc, GithubRepositoryDetailsState>(
      'if throws, emits failure state',
      setUp: () {
        when(() => repositoriesRepository.getRepository(any())).thenThrow(mockedError);
      },
      build: () => GithubRepositoryDetailsBloc(
        arguments: const GithubRepositoryDetailsArguments(
          repositoryQueryModel: sampleQueryModel,
        ),
        repositoriesRepository: repositoriesRepository,
      ),
      act: (bloc) => bloc.add(
        const GithubRepositoryDetailsEvent.fetchRepositoryDetailsRequsted(),
      ),
      expect: () => [
        const GithubRepositoryDetailsState.fetchRepositoryDetailsInProgress(),
        const GithubRepositoryDetailsState.fetchRepositoryDetailsFailure(mockedError),
      ],
    );
  });
}
