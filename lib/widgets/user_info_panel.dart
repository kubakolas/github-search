import 'package:flutter/material.dart';
import 'package:github_search/extensions/string_extensions.dart';
import 'package:github_search/models/github_user/github_user_model.dart';
import 'package:github_search/styles/app_colors.dart';
import 'package:github_search/widgets/app_cached_network_image.dart';
import 'package:github_search/widgets/spacing.dart';

class UserInfoPanel extends StatelessWidget {
  final double fontSize;
  final double imageSize;
  final GithubUserModel user;

  const UserInfoPanel(
    this.user, {
    super.key,
    this.fontSize = 14.0,
    this.imageSize = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildImage(),
        const Spacing.horizontal(8.0),
        _buildLogin(context),
      ],
    );
  }

  Widget _buildImage() {
    return SizedBox.square(
      dimension: imageSize,
      child: AppCachedNetworkImage(
        user.avatarUrl,
        borderRadius: imageSize / 2.0,
      ),
    );
  }

  Widget _buildLogin(BuildContext context) {
    return Text(
      user.login.orEmpty(),
      style: TextStyle(
        color: AppColors.of(context).textDefault,
        fontSize: 14.0,
      ),
    );
  }
}
