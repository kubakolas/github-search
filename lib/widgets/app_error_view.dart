import 'package:flutter/material.dart';
import 'package:github_search/utils/error_utils.dart';
import 'package:github_search/widgets/spacing.dart';

class AppErrorView extends StatelessWidget {
  final dynamic error;
  final VoidCallback? onTryAgainPressed;

  const AppErrorView({
    super.key,
    required this.error,
    this.onTryAgainPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            _buildDescription(context),
            if (onTryAgainPressed != null) ...[
              const Spacing.vertical(16.0),
              _buildRetryButton(),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildDescription(BuildContext context) {
    final String errorDescription = ErrorUtils.provideErrorDescription(context, error);
    return Text(
      errorDescription,
      style: const TextStyle(
        fontSize: 16.0,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildRetryButton() {
    return IconButton(
      icon: const Icon(
        Icons.replay,
        color: Colors.black,
      ),
      iconSize: 32.0,
      onPressed: onTryAgainPressed,
    );
  }
}
