// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/widgets.dart';

class Spacing extends SizedBox {
  // ignore: unused_element
  const Spacing._();

  const Spacing.horizontal(double width)
      : super(
          width: width,
        );

  const Spacing.vertical(double height)
      : super(
          height: height,
        );
}
