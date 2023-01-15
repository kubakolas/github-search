import 'package:github_search/models/github_user/github_user_model.dart';
import 'package:github_search/networking/models/github_user/github_user.dart';

extension GithubUserMappers on GithubUser {
  GithubUserModel mapToModel() => GithubUserModel(
        avatarUrl: avatarUrl,
        login: login,
      );
}
