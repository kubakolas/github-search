// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issues_query_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IssuesQueryRequest _$IssuesQueryRequestFromJson(Map<String, dynamic> json) =>
    IssuesQueryRequest(
      page: json['page'] as int,
      perPage: json['per_page'] as int,
      state: $enumDecode(_$IssueStateEnumMap, json['state']),
    );

Map<String, dynamic> _$IssuesQueryRequestToJson(IssuesQueryRequest instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'state': _$IssueStateEnumMap[instance.state]!,
    };

const _$IssueStateEnumMap = {
  IssueState.all: 'all',
  IssueState.close: 'close',
  IssueState.open: 'open',
};
