import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_user.g.dart';

@JsonSerializable()
class GithubUser {
  final String? avatarUrl;
  final String? login;

  const GithubUser({
    this.avatarUrl,
    this.login,
  });

  factory GithubUser.fromJson(Map<String, dynamic> json) => _$GithubUserFromJson(json);
}
