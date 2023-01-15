import 'package:github_search/extensions/list_extensions.dart';
import 'package:github_search/models/github_repository/github_repository_model.dart';
import 'package:github_search/networking/models/github_repository/github_repository.dart';
import 'package:github_search/mappers/github_user_mappers.dart';

extension GithubRepositoryMappers on GithubRepository {
  GithubRepositoryModel mapToModel({
    required int id,
  }) =>
      GithubRepositoryModel(
        description: description,
        id: id,
        language: language,
        name: name,
        owner: owner?.mapToModel(),
        stargazerCount: stargazersCount ?? 0,
      );
}

extension GithubRepositoriesListMappers on List<GithubRepository?>? {
  List<GithubRepositoryModel> mapToModels() => orEmpty()
      .map(
        (repository) {
          final int? id = repository?.id;
          if (id == null) return null;
          return repository?.mapToModel(
            id: id,
          );
        },
      )
      .toList()
      .filterNotNull();
}
