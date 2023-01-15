import 'package:github_search/models/repository_query/github_repository_query_model.dart';

class GithubRepositoryDetailsArguments {
  final GithubRepositoryQueryModel repositoryQueryModel;

  const GithubRepositoryDetailsArguments({
    required this.repositoryQueryModel,
  });
}
