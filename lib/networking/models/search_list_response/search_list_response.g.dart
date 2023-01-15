// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchListResponse<T> _$SearchListResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    SearchListResponse<T>(
      incompleteResults: json['incomplete_results'] as bool?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => _$nullableGenericFromJson(e, fromJsonT))
          .toList(),
      totalCount: json['total_count'] as int?,
    );

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);
