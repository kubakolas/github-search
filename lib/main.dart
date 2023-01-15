import 'package:flutter/material.dart';
import 'package:github_search/constants.dart';
import 'package:github_search/errors/app_error.dart';
import 'package:github_search/service_locator.dart';
import 'package:github_search/pages/app_entry/app_entry.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:github_search/storages/secure_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().init();
  await _initAccessToken();
  runApp(const AppEntry());
}

Future<void> _initAccessToken() async {
  final String token = await _loadAccessTokenFromFile();
  if (token.isEmpty) throw const AppError.unknown();
  final SecureStorage storage = ServiceLocator().get<SecureStorage>();
  await storage.putString(Constants.storageKeys.accessToken, token);
}

Future<String> _loadAccessTokenFromFile() {
  return rootBundle.loadString(Constants.paths.accessTokenFile);
}
