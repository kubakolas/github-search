import 'package:flutter/material.dart';

class AppSeparator extends StatelessWidget {
  const AppSeparator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor.withOpacity(0.2),
      height: 1.0,
    );
  }
}
