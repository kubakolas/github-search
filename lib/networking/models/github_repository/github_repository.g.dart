// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubRepository _$GithubRepositoryFromJson(Map<String, dynamic> json) =>
    GithubRepository(
      description: json['description'] as String?,
      fullName: json['full_name'] as String?,
      id: json['id'] as int?,
      language: json['language'] as String?,
      name: json['name'] as String?,
      owner: json['owner'] == null
          ? null
          : GithubUser.fromJson(json['owner'] as Map<String, dynamic>),
      stargazersCount: json['stargazers_count'] as int?,
    );
