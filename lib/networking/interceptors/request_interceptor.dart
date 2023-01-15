import 'dart:io';

import 'package:dio/dio.dart';
import 'package:github_search/constants.dart';
import 'package:github_search/extensions/string_extensions.dart';
import 'package:github_search/service_locator.dart';
import 'package:github_search/storages/secure_storage.dart';

class RequestInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final SecureStorage storage = ServiceLocator().get<SecureStorage>();
    final String? accessToken = await storage.getString(Constants.storageKeys.accessToken);
    if (!accessToken.isNullOrBlank) {
      options.headers[HttpHeaders.authorizationHeader] = '${Constants.headers.bearerPrefix} $accessToken';
    }
    return super.onRequest(options, handler);
  }
}
