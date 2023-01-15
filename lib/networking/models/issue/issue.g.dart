// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Issue _$IssueFromJson(Map<String, dynamic> json) => Issue(
      commentsNumber: json['comments'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      number: json['number'] as int?,
      state: $enumDecodeNullable(_$IssueStateEnumMap, json['state'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
      title: json['title'] as String?,
    );

const _$IssueStateEnumMap = {
  IssueState.all: 'all',
  IssueState.close: 'close',
  IssueState.open: 'open',
};
