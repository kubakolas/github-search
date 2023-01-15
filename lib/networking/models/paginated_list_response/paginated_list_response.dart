import 'package:dio/dio.dart';
import 'package:github_search/constants.dart';

class PaginatedListResponse<T> {
  final bool hasNextPage;
  final List<T?>? items;

  PaginatedListResponse({
    required Headers headers,
    required this.items,
  }) : hasNextPage = headers.value(Constants.headers.link)?.contains(Constants.headers.nextPageHeaderValue) ?? false;
}
