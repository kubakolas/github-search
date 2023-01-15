import 'package:flutter/material.dart';

class AppProgressIndicator extends StatelessWidget {
  final Color? color;
  final double strokeWidth;

  const AppProgressIndicator({
    super.key,
    this.color,
    this.strokeWidth = 3.0,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color ?? Theme.of(context).primaryColor,
        strokeWidth: strokeWidth,
      ),
    );
  }
}
