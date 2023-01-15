import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_repositories_query_request.g.dart';

@JsonSerializable(
  createToJson: true,
)
class SearchRepositoriesQueryRequest {
  final int page;
  final int perPage;
  @JsonKey(
    name: 'q',
  )
  final String query;

  const SearchRepositoriesQueryRequest({
    required this.page,
    required this.perPage,
    required this.query,
  });

  Map<String, dynamic> toJson() => _$SearchRepositoriesQueryRequestToJson(this);
}
