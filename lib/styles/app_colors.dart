import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  static AppColors get dark => const AppColors(
        textDefault: Colors.white,
      );

  static AppColors get light => const AppColors(
        textDefault: Colors.black,
      );

  final Color? textDefault;

  const AppColors({
    required this.textDefault,
  });

  factory AppColors.of(BuildContext context) => Theme.of(context).extension<AppColors>()!;

  @override
  AppColors copyWith({
    Color? textDefault,
  }) {
    return AppColors(
      textDefault: textDefault ?? this.textDefault,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      textDefault: Color.lerp(textDefault, other.textDefault, t),
    );
  }
}
