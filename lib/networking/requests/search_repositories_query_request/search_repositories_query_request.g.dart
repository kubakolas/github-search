// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_repositories_query_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRepositoriesQueryRequest _$SearchRepositoriesQueryRequestFromJson(
        Map<String, dynamic> json) =>
    SearchRepositoriesQueryRequest(
      page: json['page'] as int,
      perPage: json['per_page'] as int,
      query: json['q'] as String,
    );

Map<String, dynamic> _$SearchRepositoriesQueryRequestToJson(
        SearchRepositoriesQueryRequest instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'q': instance.query,
    };
