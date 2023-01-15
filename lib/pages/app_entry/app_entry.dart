import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:github_search/constants.dart';
import 'package:github_search/generated/l10n.dart';
import 'package:github_search/router/app_router.dart';
import 'package:github_search/styles/app_colors.dart';

class AppEntry extends StatelessWidget {
  const AppEntry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      darkTheme: _getTheme(Brightness.dark),
      localizationsDelegates: const [
        ...GlobalMaterialLocalizations.delegates,
        S.delegate,
      ],
      routerConfig: AppRouter.router,
      theme: _getTheme(Brightness.light),
      themeMode: ThemeMode.system,
    );
  }

  ThemeData _getTheme(Brightness brightness) {
    final bool isLightTheme = brightness == Brightness.light;
    return ThemeData(
      appBarTheme: isLightTheme
          ? const AppBarTheme(
              color: Colors.white,
              foregroundColor: Colors.black,
            )
          : null,
      brightness: brightness,
      extensions: [
        isLightTheme ? AppColors.light : AppColors.dark,
      ],
      fontFamily: Constants.theme.appFontFamily,
      primaryColor: isLightTheme ? Colors.black : Colors.white,
    );
  }
}
