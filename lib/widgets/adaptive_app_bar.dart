import 'package:flutter/material.dart';
import 'package:github_search/styles/app_colors.dart';

class AdaptiveAppBar extends AppBar {
  AdaptiveAppBar(
    BuildContext context, {
    super.key,
    super.actions = const [],
    super.centerTitle = true,
    super.elevation = 0.5,
    Widget? leading,
    String? title,
    super.titleSpacing,
  }) : super(
          leading: leading,
          title: title != null ? _buildTitle(context, title) : null,
        );

  static Widget _buildTitle(BuildContext context, String title) {
    return Text(
      title,
      style: TextStyle(
        color: AppColors.of(context).textDefault,
        fontSize: 18.0,
      ),
    );
  }
}
