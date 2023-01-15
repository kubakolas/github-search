import 'package:equatable/equatable.dart';
import 'package:github_search/models/github_user/github_user_model.dart';

class GithubRepositoryDetailsModel extends Equatable {
  final String? description;
  final String? homepage;
  final int id;
  final String? language;
  final String? name;
  final GithubUserModel? owner;
  final int stargazerCount;

  const GithubRepositoryDetailsModel({
    required this.description,
    required this.homepage,
    required this.id,
    required this.language,
    required this.name,
    required this.owner,
    required this.stargazerCount,
  });

  @override
  List<Object?> get props => [
        id,
      ];
}
