import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveButton extends StatelessWidget {
  final BoxDecoration? decoration;
  final double? width;
  final VoidCallback? onPressed;
  final Widget child;

  const AdaptiveButton({
    super.key,
    this.decoration,
    this.width = double.infinity,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? _buildCupertinoButton(context) : _buildMaterialButton(context);
  }

  Widget _buildCupertinoButton(BuildContext context) {
    return _buildBoxDecoration(
      child: CupertinoButton(
        minSize: 0.0,
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: child,
      ),
    );
  }

  Widget _buildMaterialButton(BuildContext context) {
    final BorderRadiusGeometry? borderRadius = decoration?.borderRadius;
    return _buildBoxDecoration(
      child: MaterialButton(
        onPressed: onPressed,
        elevation: 0.0,
        focusElevation: 0.0,
        height: 0.0,
        hoverElevation: 0.0,
        highlightElevation: 0.0,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minWidth: 0.0,
        padding: EdgeInsets.zero,
        shape: borderRadius != null
            ? RoundedRectangleBorder(
                borderRadius: borderRadius,
              )
            : null,
        child: child,
      ),
    );
  }

  Widget _buildBoxDecoration({
    required Widget child,
  }) {
    return Container(
      decoration: decoration,
      margin: EdgeInsets.zero,
      width: width,
      child: child,
    );
  }
}
