import 'package:flutter/material.dart';
import 'package:github_search/extensions/string_extensions.dart';
import 'package:github_search/models/github_repository/github_repository_model.dart';
import 'package:github_search/models/github_user/github_user_model.dart';
import 'package:github_search/styles/app_colors.dart';
import 'package:github_search/widgets/adaptive_button.dart';
import 'package:github_search/widgets/spacing.dart';
import 'package:github_search/widgets/user_info_panel.dart';

class GithubRepositoryCell extends StatelessWidget {
  final GithubRepositoryModel repository;
  final VoidCallback onPressed;

  const GithubRepositoryCell({
    super.key,
    required this.repository,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final GithubUserModel? owner = repository.owner;
    final String? description = repository.description;
    return AdaptiveButton(
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (owner != null) ...[
              UserInfoPanel(owner),
              const Spacing.vertical(8.0),
            ],
            _buildName(context),
            const Spacing.vertical(8.0),
            if (!description.isNullOrBlank) ...[
              _buildDescription(context),
              const Spacing.vertical(8.0),
            ],
            _buildStarsAndLanguageInfo(context),
          ],
        ),
      ),
    );
  }

  Widget _buildName(BuildContext context) {
    return Text(
      repository.name.orEmpty(),
      style: TextStyle(
        color: AppColors.of(context).textDefault,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Text(
      repository.description.orEmpty(),
      style: TextStyle(
        color: AppColors.of(context).textDefault,
      ),
    );
  }

  Widget _buildStarsAndLanguageInfo(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildIconWithNameRow(
          context,
          iconData: Icons.star,
          name: repository.stargazerCount.toString(),
        ),
        const Spacing.horizontal(16.0),
        _buildIconWithNameRow(
          context,
          iconData: Icons.computer,
          name: repository.language.orEmpty(),
        ),
      ],
    );
  }

  Widget _buildIconWithNameRow(
    BuildContext context, {
    required IconData iconData,
    required String name,
  }) {
    final Color? color = AppColors.of(context).textDefault;
    return Row(
      children: [
        Icon(
          iconData,
          color: color,
          size: 14.0,
        ),
        const Spacing.horizontal(4.0),
        Text(
          name,
          style: TextStyle(
            color: color,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
