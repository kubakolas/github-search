import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_list_response.g.dart';

@JsonSerializable(
  genericArgumentFactories: true,
)
class SearchListResponse<T> {
  final bool? incompleteResults;
  final List<T?>? items;
  final int? totalCount;

  const SearchListResponse({
    this.incompleteResults,
    this.items,
    this.totalCount,
  });

  factory SearchListResponse.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$SearchListResponseFromJson(json, fromJsonT);
}
