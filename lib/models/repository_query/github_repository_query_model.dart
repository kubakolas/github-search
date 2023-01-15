class GithubRepositoryQueryModel {
  final String? ownerLogin;
  final String? repositoryName;

  const GithubRepositoryQueryModel({
    required this.ownerLogin,
    required this.repositoryName,
  });
}
