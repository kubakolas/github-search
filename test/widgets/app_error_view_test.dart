import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/errors/app_error.dart';
import 'package:github_search/generated/l10n.dart';
import 'package:github_search/widgets/app_error_view.dart';

void main() {
  group(
    'AppErrorView',
    () {
      Widget buildTestableWidget({
        required Widget child,
      }) {
        return MaterialApp(
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            S.delegate
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: const Locale('en'),
          home: Material(
            child: child,
          ),
        );
      }

      testWidgets(
        'Has localized description of the network error and no refresh icon',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            buildTestableWidget(
              child: const AppErrorView(
                error: AppError.network(),
              ),
            ),
          );
          await tester.pump();
          final Finder descriptionFinder = find.text('No connectivity detected, check Your internet connection.');
          final Finder iconFinder = find.byIcon(Icons.replay);
          expect(descriptionFinder, findsOneWidget);
          expect(iconFinder, findsNothing);
        },
      );

      testWidgets(
        'Has localized description of the timeout error and a refresh icon',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            buildTestableWidget(
              child: AppErrorView(
                error: const AppError.timeout(),
                onTryAgainPressed: () {},
              ),
            ),
          );
          await tester.pump();
          final Finder descriptionFinder =
              find.text('Maximum connection time exceeded. Check your connection and try again.');
          final Finder iconFinder = find.byIcon(Icons.replay);
          expect(descriptionFinder, findsOneWidget);
          expect(iconFinder, findsOneWidget);
        },
      );
    },
  );
}
