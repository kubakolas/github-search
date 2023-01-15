import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search/networking/models/github_user/github_user.dart';

part 'github_repository_details.g.dart';

@JsonSerializable()
class GithubRepositoryDetails {
  final String? description;
  final String? homepage;
  final int? id;
  final String? language;
  final String? name;
  final GithubUser? owner;
  final int? stargazersCount;

  const GithubRepositoryDetails({
    this.description,
    this.homepage,
    this.id,
    this.language,
    this.name,
    this.owner,
    this.stargazersCount,
  });

  factory GithubRepositoryDetails.fromJson(Map<String, dynamic> json) => _$GithubRepositoryDetailsFromJson(json);
}
