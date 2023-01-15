import 'dart:io';

import 'package:dio/dio.dart';
import 'package:github_search/errors/app_error.dart';

class ErrorInterceptor extends Interceptor {
  @override
  Future<void> onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) async {
    err.error = await _provideAppError(err);
    return super.onError(err, handler);
  }

  Future<AppError> _provideAppError(DioError err) async {
    if (err.type == DioErrorType.connectTimeout || err.type == DioErrorType.receiveTimeout) {
      return const AppError.timeout();
    } else if (err.type == DioErrorType.response) {
      final int? statusCode = err.response?.statusCode;
      if (statusCode == null) {
        return const AppError.unknown();
      } else if (statusCode >= HttpStatus.internalServerError) {
        return const AppError.server();
      } else {
        return const AppError.client();
      }
    } else if (err.type == DioErrorType.other) {
      return const AppError.network();
    }
    return const AppError.unknown();
  }
}
