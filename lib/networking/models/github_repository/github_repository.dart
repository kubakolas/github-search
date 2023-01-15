import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search/networking/models/github_user/github_user.dart';

part 'github_repository.g.dart';

@JsonSerializable()
class GithubRepository {
  static GithubRepository fromJsonObject(Object? json) => GithubRepository.fromJson(json as Map<String, dynamic>);

  final String? description;
  final String? fullName;
  final int? id;
  final String? language;
  final String? name;
  final GithubUser? owner;
  final int? stargazersCount;

  const GithubRepository({
    this.description,
    this.fullName,
    this.id,
    this.language,
    this.name,
    this.owner,
    this.stargazersCount,
  });

  factory GithubRepository.fromJson(Map<String, dynamic> json) => _$GithubRepositoryFromJson(json);
}
