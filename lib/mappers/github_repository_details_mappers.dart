import 'package:github_search/mappers/github_user_mappers.dart';
import 'package:github_search/models/github_repository_details/github_repository_details_model.dart';
import 'package:github_search/networking/models/github_repository_details/github_repository_details.dart';

extension GithubRepositoryMappers on GithubRepositoryDetails {
  GithubRepositoryDetailsModel mapToModel() => GithubRepositoryDetailsModel(
        description: description,
        homepage: homepage,
        id: id!,
        language: language,
        name: name,
        owner: owner?.mapToModel(),
        stargazerCount: stargazersCount ?? 0,
      );
}
