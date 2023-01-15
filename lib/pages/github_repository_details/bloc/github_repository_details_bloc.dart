import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search/mappers/github_repository_details_mappers.dart';
import 'package:github_search/models/github_repository_details/github_repository_details_model.dart';
import 'package:github_search/networking/models/github_repository_details/github_repository_details.dart';
import 'package:github_search/pages/github_repository_details/github_repository_details_arguments.dart';
import 'package:github_search/repositories/github_repositories/github_repositories_repository.dart';

part 'github_repository_details_event.dart';
part 'github_repository_details_state.dart';
part 'github_repository_details_bloc.freezed.dart';

class GithubRepositoryDetailsBloc extends Bloc<GithubRepositoryDetailsEvent, GithubRepositoryDetailsState> {
  final GithubRepositoryDetailsArguments arguments;
  final GithubRepositoriesRepository repositoriesRepository;

  GithubRepositoryDetailsBloc({
    required this.arguments,
    required this.repositoriesRepository,
  }) : super(const _Initial()) {
    on<_FetchRepositoryDetailsRequested>(_onFetchRepositoryDetailsRequested);
  }

  Future<void> _onFetchRepositoryDetailsRequested(
    _FetchRepositoryDetailsRequested event,
    Emitter<GithubRepositoryDetailsState> emit,
  ) async {
    emit(
      const GithubRepositoryDetailsState.fetchRepositoryDetailsInProgress(),
    );
    try {
      final GithubRepositoryDetails repositoryDetails =
          await repositoriesRepository.getRepository(arguments.repositoryQueryModel);
      emit(
        GithubRepositoryDetailsState.fetchRepositoryDetailsSuccess(repositoryDetails.mapToModel()),
      );
    } catch (error) {
      emit(
        GithubRepositoryDetailsState.fetchRepositoryDetailsFailure(error),
      );
    }
  }
}
