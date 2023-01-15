import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio;

  const ApiClient({
    required this.dio,
  });

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    return dio.get(
      path,
      queryParameters: queryParameters,
    );
  }
}
