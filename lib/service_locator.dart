import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:github_search/constants.dart';
import 'package:github_search/networking/api_client.dart';
import 'package:github_search/networking/interceptors/error_interceptor.dart';
import 'package:github_search/networking/interceptors/request_interceptor.dart';
import 'package:github_search/repositories/github_repositories/github_repositories_repository.dart';
import 'package:github_search/repositories/github_repositories/network_github_repositories_repository.dart';
import 'package:github_search/repositories/search/network_search_repository.dart';
import 'package:github_search/repositories/search/search_repository.dart';
import 'package:github_search/storages/secure_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ServiceLocator {
  static final ServiceLocator _instance = ServiceLocator._();

  GetIt get _getIt => GetIt.instance;

  factory ServiceLocator() => _instance;

  ServiceLocator._();

  void init() {
    _initDio();
    _initApiClient();
    _initRepositories();
    _initSecureStorage();
  }

  void _initDio() {
    final Dio dio = Dio();
    dio.interceptors.addAll([
      RequestInterceptor(),
      ErrorInterceptor(),
      if (kDebugMode)
        PrettyDioLogger(
          responseBody: false,
        ),
    ]);
    dio.options
      ..baseUrl = Constants.networking.apiBaseUrl
      ..connectTimeout = Constants.networking.timeoutDuration
      ..receiveTimeout = Constants.networking.timeoutDuration
      ..followRedirects = false;
    _getIt.registerSingleton(dio);
  }

  void _initApiClient() {
    _getIt.registerSingleton(
      ApiClient(
        dio: _getIt<Dio>(),
      ),
    );
  }

  void _initRepositories() {
    final ApiClient apiClient = _getIt<ApiClient>();
    _getIt.registerSingleton<SearchRepository>(
      NetworkSearchRepository(
        apiClient: apiClient,
      ),
    );
    _getIt.registerSingleton<GithubRepositoriesRepository>(
      NetworkGithubRepositoriesRepository(
        apiClient: apiClient,
      ),
    );
  }

  void _initSecureStorage() {
    _getIt.registerSingleton<SecureStorage>(const SecureStorage());
  }

  T get<T extends Object>() => _getIt<T>();
}
