import 'package:flutter/material.dart';
import 'package:github_search/constants.dart';
import 'package:github_search/extensions/string_extensions.dart';
import 'package:github_search/models/issue/issue_model.dart';
import 'package:github_search/networking/models/issue/issue_state.dart';
import 'package:github_search/styles/app_colors.dart';
import 'package:github_search/widgets/spacing.dart';
import 'package:intl/intl.dart';

class IssueCell extends StatelessWidget {
  final IssueModel issue;

  const IssueCell({
    super.key,
    required this.issue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 6.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.error,
            color: _getIconColor(),
            size: 20.0,
          ),
          const Spacing.horizontal(16.0),
          Expanded(
            child: _buildTitleAndDate(context),
          ),
          if (issue.hasAnyComments) ...[
            const Spacing.horizontal(4.0),
            _buildCommentsNumber(context),
          ],
        ],
      ),
    );
  }

  Widget _buildTitleAndDate(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          issue.title.orEmpty(),
          style: TextStyle(
            color: AppColors.of(context).textDefault,
            fontSize: 16.0,
          ),
        ),
        const Spacing.vertical(6.0),
        Text(
          DateFormat(Constants.dateFormats.ddMMyyyy).format(issue.createdAt!),
          style: TextStyle(
            color: AppColors.of(context).textDefault?.withOpacity(0.5),
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }

  Widget _buildCommentsNumber(BuildContext context) {
    final Color? color = AppColors.of(context).textDefault?.withOpacity(0.5);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.comment,
          color: color,
          size: 14.0,
        ),
        const Spacing.horizontal(2.0),
        Text(
          issue.commentsNumber.toString(),
          style: TextStyle(
            color: color,
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }

  Color _getIconColor() {
    switch (issue.state) {
      case IssueState.all:
      case null:
        return Colors.black;
      case IssueState.close:
        return Colors.purple;
      case IssueState.open:
        return Colors.lightGreen;
    }
  }
}
