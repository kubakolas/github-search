// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubRepositoryDetails _$GithubRepositoryDetailsFromJson(
        Map<String, dynamic> json) =>
    GithubRepositoryDetails(
      description: json['description'] as String?,
      homepage: json['homepage'] as String?,
      id: json['id'] as int?,
      language: json['language'] as String?,
      name: json['name'] as String?,
      owner: json['owner'] == null
          ? null
          : GithubUser.fromJson(json['owner'] as Map<String, dynamic>),
      stargazersCount: json['stargazers_count'] as int?,
    );
