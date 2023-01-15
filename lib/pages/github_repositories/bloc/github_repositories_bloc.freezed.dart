// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_repositories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GithubRepositoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, String query)
        fetchRepositoriesPageRequested,
    required TResult Function() queryTextChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, String query)? fetchRepositoriesPageRequested,
    TResult? Function()? queryTextChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String query)? fetchRepositoriesPageRequested,
    TResult Function()? queryTextChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRepositoriesPageRequested value)
        fetchRepositoriesPageRequested,
    required TResult Function(_QueryTextChanged value) queryTextChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRepositoriesPageRequested value)?
        fetchRepositoriesPageRequested,
    TResult? Function(_QueryTextChanged value)? queryTextChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRepositoriesPageRequested value)?
        fetchRepositoriesPageRequested,
    TResult Function(_QueryTextChanged value)? queryTextChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepositoriesEventCopyWith<$Res> {
  factory $GithubRepositoriesEventCopyWith(GithubRepositoriesEvent value,
          $Res Function(GithubRepositoriesEvent) then) =
      _$GithubRepositoriesEventCopyWithImpl<$Res, GithubRepositoriesEvent>;
}

/// @nodoc
class _$GithubRepositoriesEventCopyWithImpl<$Res,
        $Val extends GithubRepositoriesEvent>
    implements $GithubRepositoriesEventCopyWith<$Res> {
  _$GithubRepositoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchRepositoriesPageRequestedCopyWith<$Res> {
  factory _$$_FetchRepositoriesPageRequestedCopyWith(
          _$_FetchRepositoriesPageRequested value,
          $Res Function(_$_FetchRepositoriesPageRequested) then) =
      __$$_FetchRepositoriesPageRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, String query});
}

/// @nodoc
class __$$_FetchRepositoriesPageRequestedCopyWithImpl<$Res>
    extends _$GithubRepositoriesEventCopyWithImpl<$Res,
        _$_FetchRepositoriesPageRequested>
    implements _$$_FetchRepositoriesPageRequestedCopyWith<$Res> {
  __$$_FetchRepositoriesPageRequestedCopyWithImpl(
      _$_FetchRepositoriesPageRequested _value,
      $Res Function(_$_FetchRepositoriesPageRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? query = null,
  }) {
    return _then(_$_FetchRepositoriesPageRequested(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchRepositoriesPageRequested
    implements _FetchRepositoriesPageRequested {
  const _$_FetchRepositoriesPageRequested(
      {required this.page, required this.query});

  @override
  final int page;
  @override
  final String query;

  @override
  String toString() {
    return 'GithubRepositoriesEvent.fetchRepositoriesPageRequested(page: $page, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchRepositoriesPageRequested &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchRepositoriesPageRequestedCopyWith<_$_FetchRepositoriesPageRequested>
      get copyWith => __$$_FetchRepositoriesPageRequestedCopyWithImpl<
          _$_FetchRepositoriesPageRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, String query)
        fetchRepositoriesPageRequested,
    required TResult Function() queryTextChanged,
  }) {
    return fetchRepositoriesPageRequested(page, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, String query)? fetchRepositoriesPageRequested,
    TResult? Function()? queryTextChanged,
  }) {
    return fetchRepositoriesPageRequested?.call(page, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String query)? fetchRepositoriesPageRequested,
    TResult Function()? queryTextChanged,
    required TResult orElse(),
  }) {
    if (fetchRepositoriesPageRequested != null) {
      return fetchRepositoriesPageRequested(page, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRepositoriesPageRequested value)
        fetchRepositoriesPageRequested,
    required TResult Function(_QueryTextChanged value) queryTextChanged,
  }) {
    return fetchRepositoriesPageRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRepositoriesPageRequested value)?
        fetchRepositoriesPageRequested,
    TResult? Function(_QueryTextChanged value)? queryTextChanged,
  }) {
    return fetchRepositoriesPageRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRepositoriesPageRequested value)?
        fetchRepositoriesPageRequested,
    TResult Function(_QueryTextChanged value)? queryTextChanged,
    required TResult orElse(),
  }) {
    if (fetchRepositoriesPageRequested != null) {
      return fetchRepositoriesPageRequested(this);
    }
    return orElse();
  }
}

abstract class _FetchRepositoriesPageRequested
    implements GithubRepositoriesEvent {
  const factory _FetchRepositoriesPageRequested(
      {required final int page,
      required final String query}) = _$_FetchRepositoriesPageRequested;

  int get page;
  String get query;
  @JsonKey(ignore: true)
  _$$_FetchRepositoriesPageRequestedCopyWith<_$_FetchRepositoriesPageRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QueryTextChangedCopyWith<$Res> {
  factory _$$_QueryTextChangedCopyWith(
          _$_QueryTextChanged value, $Res Function(_$_QueryTextChanged) then) =
      __$$_QueryTextChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_QueryTextChangedCopyWithImpl<$Res>
    extends _$GithubRepositoriesEventCopyWithImpl<$Res, _$_QueryTextChanged>
    implements _$$_QueryTextChangedCopyWith<$Res> {
  __$$_QueryTextChangedCopyWithImpl(
      _$_QueryTextChanged _value, $Res Function(_$_QueryTextChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_QueryTextChanged implements _QueryTextChanged {
  const _$_QueryTextChanged();

  @override
  String toString() {
    return 'GithubRepositoriesEvent.queryTextChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_QueryTextChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, String query)
        fetchRepositoriesPageRequested,
    required TResult Function() queryTextChanged,
  }) {
    return queryTextChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, String query)? fetchRepositoriesPageRequested,
    TResult? Function()? queryTextChanged,
  }) {
    return queryTextChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String query)? fetchRepositoriesPageRequested,
    TResult Function()? queryTextChanged,
    required TResult orElse(),
  }) {
    if (queryTextChanged != null) {
      return queryTextChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRepositoriesPageRequested value)
        fetchRepositoriesPageRequested,
    required TResult Function(_QueryTextChanged value) queryTextChanged,
  }) {
    return queryTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRepositoriesPageRequested value)?
        fetchRepositoriesPageRequested,
    TResult? Function(_QueryTextChanged value)? queryTextChanged,
  }) {
    return queryTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRepositoriesPageRequested value)?
        fetchRepositoriesPageRequested,
    TResult Function(_QueryTextChanged value)? queryTextChanged,
    required TResult orElse(),
  }) {
    if (queryTextChanged != null) {
      return queryTextChanged(this);
    }
    return orElse();
  }
}

abstract class _QueryTextChanged implements GithubRepositoriesEvent {
  const factory _QueryTextChanged() = _$_QueryTextChanged;
}

/// @nodoc
mixin _$GithubRepositoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noResults,
    required TResult Function() queryTextChange,
    required TResult Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)
        fetchGithubRepositoriesPageSucesss,
    required TResult Function(dynamic error) fetchGithubRepositoriesPageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noResults,
    TResult? Function()? queryTextChange,
    TResult? Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)?
        fetchGithubRepositoriesPageSucesss,
    TResult? Function(dynamic error)? fetchGithubRepositoriesPageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noResults,
    TResult Function()? queryTextChange,
    TResult Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)?
        fetchGithubRepositoriesPageSucesss,
    TResult Function(dynamic error)? fetchGithubRepositoriesPageFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchGithubRepositoriesNoResults value)
        noResults,
    required TResult Function(_QueryTextChange value) queryTextChange,
    required TResult Function(_FetchGithubRepositoriesPageSuccess value)
        fetchGithubRepositoriesPageSucesss,
    required TResult Function(_FetchGithubRepositoriesPageFailure value)
        fetchGithubRepositoriesPageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchGithubRepositoriesNoResults value)? noResults,
    TResult? Function(_QueryTextChange value)? queryTextChange,
    TResult? Function(_FetchGithubRepositoriesPageSuccess value)?
        fetchGithubRepositoriesPageSucesss,
    TResult? Function(_FetchGithubRepositoriesPageFailure value)?
        fetchGithubRepositoriesPageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchGithubRepositoriesNoResults value)? noResults,
    TResult Function(_QueryTextChange value)? queryTextChange,
    TResult Function(_FetchGithubRepositoriesPageSuccess value)?
        fetchGithubRepositoriesPageSucesss,
    TResult Function(_FetchGithubRepositoriesPageFailure value)?
        fetchGithubRepositoriesPageFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepositoriesStateCopyWith<$Res> {
  factory $GithubRepositoriesStateCopyWith(GithubRepositoriesState value,
          $Res Function(GithubRepositoriesState) then) =
      _$GithubRepositoriesStateCopyWithImpl<$Res, GithubRepositoriesState>;
}

/// @nodoc
class _$GithubRepositoriesStateCopyWithImpl<$Res,
        $Val extends GithubRepositoriesState>
    implements $GithubRepositoriesStateCopyWith<$Res> {
  _$GithubRepositoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$GithubRepositoriesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GithubRepositoriesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noResults,
    required TResult Function() queryTextChange,
    required TResult Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)
        fetchGithubRepositoriesPageSucesss,
    required TResult Function(dynamic error) fetchGithubRepositoriesPageFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noResults,
    TResult? Function()? queryTextChange,
    TResult? Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)?
        fetchGithubRepositoriesPageSucesss,
    TResult? Function(dynamic error)? fetchGithubRepositoriesPageFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noResults,
    TResult Function()? queryTextChange,
    TResult Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)?
        fetchGithubRepositoriesPageSucesss,
    TResult Function(dynamic error)? fetchGithubRepositoriesPageFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchGithubRepositoriesNoResults value)
        noResults,
    required TResult Function(_QueryTextChange value) queryTextChange,
    required TResult Function(_FetchGithubRepositoriesPageSuccess value)
        fetchGithubRepositoriesPageSucesss,
    required TResult Function(_FetchGithubRepositoriesPageFailure value)
        fetchGithubRepositoriesPageFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchGithubRepositoriesNoResults value)? noResults,
    TResult? Function(_QueryTextChange value)? queryTextChange,
    TResult? Function(_FetchGithubRepositoriesPageSuccess value)?
        fetchGithubRepositoriesPageSucesss,
    TResult? Function(_FetchGithubRepositoriesPageFailure value)?
        fetchGithubRepositoriesPageFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchGithubRepositoriesNoResults value)? noResults,
    TResult Function(_QueryTextChange value)? queryTextChange,
    TResult Function(_FetchGithubRepositoriesPageSuccess value)?
        fetchGithubRepositoriesPageSucesss,
    TResult Function(_FetchGithubRepositoriesPageFailure value)?
        fetchGithubRepositoriesPageFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GithubRepositoriesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_FetchGithubRepositoriesNoResultsCopyWith<$Res> {
  factory _$$_FetchGithubRepositoriesNoResultsCopyWith(
          _$_FetchGithubRepositoriesNoResults value,
          $Res Function(_$_FetchGithubRepositoriesNoResults) then) =
      __$$_FetchGithubRepositoriesNoResultsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchGithubRepositoriesNoResultsCopyWithImpl<$Res>
    extends _$GithubRepositoriesStateCopyWithImpl<$Res,
        _$_FetchGithubRepositoriesNoResults>
    implements _$$_FetchGithubRepositoriesNoResultsCopyWith<$Res> {
  __$$_FetchGithubRepositoriesNoResultsCopyWithImpl(
      _$_FetchGithubRepositoriesNoResults _value,
      $Res Function(_$_FetchGithubRepositoriesNoResults) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchGithubRepositoriesNoResults
    implements _FetchGithubRepositoriesNoResults {
  const _$_FetchGithubRepositoriesNoResults();

  @override
  String toString() {
    return 'GithubRepositoriesState.noResults()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchGithubRepositoriesNoResults);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noResults,
    required TResult Function() queryTextChange,
    required TResult Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)
        fetchGithubRepositoriesPageSucesss,
    required TResult Function(dynamic error) fetchGithubRepositoriesPageFailure,
  }) {
    return noResults();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noResults,
    TResult? Function()? queryTextChange,
    TResult? Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)?
        fetchGithubRepositoriesPageSucesss,
    TResult? Function(dynamic error)? fetchGithubRepositoriesPageFailure,
  }) {
    return noResults?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noResults,
    TResult Function()? queryTextChange,
    TResult Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)?
        fetchGithubRepositoriesPageSucesss,
    TResult Function(dynamic error)? fetchGithubRepositoriesPageFailure,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchGithubRepositoriesNoResults value)
        noResults,
    required TResult Function(_QueryTextChange value) queryTextChange,
    required TResult Function(_FetchGithubRepositoriesPageSuccess value)
        fetchGithubRepositoriesPageSucesss,
    required TResult Function(_FetchGithubRepositoriesPageFailure value)
        fetchGithubRepositoriesPageFailure,
  }) {
    return noResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchGithubRepositoriesNoResults value)? noResults,
    TResult? Function(_QueryTextChange value)? queryTextChange,
    TResult? Function(_FetchGithubRepositoriesPageSuccess value)?
        fetchGithubRepositoriesPageSucesss,
    TResult? Function(_FetchGithubRepositoriesPageFailure value)?
        fetchGithubRepositoriesPageFailure,
  }) {
    return noResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchGithubRepositoriesNoResults value)? noResults,
    TResult Function(_QueryTextChange value)? queryTextChange,
    TResult Function(_FetchGithubRepositoriesPageSuccess value)?
        fetchGithubRepositoriesPageSucesss,
    TResult Function(_FetchGithubRepositoriesPageFailure value)?
        fetchGithubRepositoriesPageFailure,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults(this);
    }
    return orElse();
  }
}

abstract class _FetchGithubRepositoriesNoResults
    implements GithubRepositoriesState {
  const factory _FetchGithubRepositoriesNoResults() =
      _$_FetchGithubRepositoriesNoResults;
}

/// @nodoc
abstract class _$$_QueryTextChangeCopyWith<$Res> {
  factory _$$_QueryTextChangeCopyWith(
          _$_QueryTextChange value, $Res Function(_$_QueryTextChange) then) =
      __$$_QueryTextChangeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_QueryTextChangeCopyWithImpl<$Res>
    extends _$GithubRepositoriesStateCopyWithImpl<$Res, _$_QueryTextChange>
    implements _$$_QueryTextChangeCopyWith<$Res> {
  __$$_QueryTextChangeCopyWithImpl(
      _$_QueryTextChange _value, $Res Function(_$_QueryTextChange) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_QueryTextChange implements _QueryTextChange {
  const _$_QueryTextChange();

  @override
  String toString() {
    return 'GithubRepositoriesState.queryTextChange()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_QueryTextChange);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noResults,
    required TResult Function() queryTextChange,
    required TResult Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)
        fetchGithubRepositoriesPageSucesss,
    required TResult Function(dynamic error) fetchGithubRepositoriesPageFailure,
  }) {
    return queryTextChange();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noResults,
    TResult? Function()? queryTextChange,
    TResult? Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)?
        fetchGithubRepositoriesPageSucesss,
    TResult? Function(dynamic error)? fetchGithubRepositoriesPageFailure,
  }) {
    return queryTextChange?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noResults,
    TResult Function()? queryTextChange,
    TResult Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)?
        fetchGithubRepositoriesPageSucesss,
    TResult Function(dynamic error)? fetchGithubRepositoriesPageFailure,
    required TResult orElse(),
  }) {
    if (queryTextChange != null) {
      return queryTextChange();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchGithubRepositoriesNoResults value)
        noResults,
    required TResult Function(_QueryTextChange value) queryTextChange,
    required TResult Function(_FetchGithubRepositoriesPageSuccess value)
        fetchGithubRepositoriesPageSucesss,
    required TResult Function(_FetchGithubRepositoriesPageFailure value)
        fetchGithubRepositoriesPageFailure,
  }) {
    return queryTextChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchGithubRepositoriesNoResults value)? noResults,
    TResult? Function(_QueryTextChange value)? queryTextChange,
    TResult? Function(_FetchGithubRepositoriesPageSuccess value)?
        fetchGithubRepositoriesPageSucesss,
    TResult? Function(_FetchGithubRepositoriesPageFailure value)?
        fetchGithubRepositoriesPageFailure,
  }) {
    return queryTextChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchGithubRepositoriesNoResults value)? noResults,
    TResult Function(_QueryTextChange value)? queryTextChange,
    TResult Function(_FetchGithubRepositoriesPageSuccess value)?
        fetchGithubRepositoriesPageSucesss,
    TResult Function(_FetchGithubRepositoriesPageFailure value)?
        fetchGithubRepositoriesPageFailure,
    required TResult orElse(),
  }) {
    if (queryTextChange != null) {
      return queryTextChange(this);
    }
    return orElse();
  }
}

abstract class _QueryTextChange implements GithubRepositoriesState {
  const factory _QueryTextChange() = _$_QueryTextChange;
}

/// @nodoc
abstract class _$$_FetchGithubRepositoriesPageSuccessCopyWith<$Res> {
  factory _$$_FetchGithubRepositoriesPageSuccessCopyWith(
          _$_FetchGithubRepositoriesPageSuccess value,
          $Res Function(_$_FetchGithubRepositoriesPageSuccess) then) =
      __$$_FetchGithubRepositoriesPageSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool hasNextPage,
      int nextPageNumber,
      List<GithubRepositoryModel> repositories});
}

/// @nodoc
class __$$_FetchGithubRepositoriesPageSuccessCopyWithImpl<$Res>
    extends _$GithubRepositoriesStateCopyWithImpl<$Res,
        _$_FetchGithubRepositoriesPageSuccess>
    implements _$$_FetchGithubRepositoriesPageSuccessCopyWith<$Res> {
  __$$_FetchGithubRepositoriesPageSuccessCopyWithImpl(
      _$_FetchGithubRepositoriesPageSuccess _value,
      $Res Function(_$_FetchGithubRepositoriesPageSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasNextPage = null,
    Object? nextPageNumber = null,
    Object? repositories = null,
  }) {
    return _then(_$_FetchGithubRepositoriesPageSuccess(
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPageNumber: null == nextPageNumber
          ? _value.nextPageNumber
          : nextPageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      repositories: null == repositories
          ? _value._repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<GithubRepositoryModel>,
    ));
  }
}

/// @nodoc

class _$_FetchGithubRepositoriesPageSuccess
    implements _FetchGithubRepositoriesPageSuccess {
  const _$_FetchGithubRepositoriesPageSuccess(
      {required this.hasNextPage,
      required this.nextPageNumber,
      required final List<GithubRepositoryModel> repositories})
      : _repositories = repositories;

  @override
  final bool hasNextPage;
  @override
  final int nextPageNumber;
  final List<GithubRepositoryModel> _repositories;
  @override
  List<GithubRepositoryModel> get repositories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repositories);
  }

  @override
  String toString() {
    return 'GithubRepositoriesState.fetchGithubRepositoriesPageSucesss(hasNextPage: $hasNextPage, nextPageNumber: $nextPageNumber, repositories: $repositories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchGithubRepositoriesPageSuccess &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.nextPageNumber, nextPageNumber) ||
                other.nextPageNumber == nextPageNumber) &&
            const DeepCollectionEquality()
                .equals(other._repositories, _repositories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasNextPage, nextPageNumber,
      const DeepCollectionEquality().hash(_repositories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchGithubRepositoriesPageSuccessCopyWith<
          _$_FetchGithubRepositoriesPageSuccess>
      get copyWith => __$$_FetchGithubRepositoriesPageSuccessCopyWithImpl<
          _$_FetchGithubRepositoriesPageSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noResults,
    required TResult Function() queryTextChange,
    required TResult Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)
        fetchGithubRepositoriesPageSucesss,
    required TResult Function(dynamic error) fetchGithubRepositoriesPageFailure,
  }) {
    return fetchGithubRepositoriesPageSucesss(
        hasNextPage, nextPageNumber, repositories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noResults,
    TResult? Function()? queryTextChange,
    TResult? Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)?
        fetchGithubRepositoriesPageSucesss,
    TResult? Function(dynamic error)? fetchGithubRepositoriesPageFailure,
  }) {
    return fetchGithubRepositoriesPageSucesss?.call(
        hasNextPage, nextPageNumber, repositories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noResults,
    TResult Function()? queryTextChange,
    TResult Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)?
        fetchGithubRepositoriesPageSucesss,
    TResult Function(dynamic error)? fetchGithubRepositoriesPageFailure,
    required TResult orElse(),
  }) {
    if (fetchGithubRepositoriesPageSucesss != null) {
      return fetchGithubRepositoriesPageSucesss(
          hasNextPage, nextPageNumber, repositories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchGithubRepositoriesNoResults value)
        noResults,
    required TResult Function(_QueryTextChange value) queryTextChange,
    required TResult Function(_FetchGithubRepositoriesPageSuccess value)
        fetchGithubRepositoriesPageSucesss,
    required TResult Function(_FetchGithubRepositoriesPageFailure value)
        fetchGithubRepositoriesPageFailure,
  }) {
    return fetchGithubRepositoriesPageSucesss(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchGithubRepositoriesNoResults value)? noResults,
    TResult? Function(_QueryTextChange value)? queryTextChange,
    TResult? Function(_FetchGithubRepositoriesPageSuccess value)?
        fetchGithubRepositoriesPageSucesss,
    TResult? Function(_FetchGithubRepositoriesPageFailure value)?
        fetchGithubRepositoriesPageFailure,
  }) {
    return fetchGithubRepositoriesPageSucesss?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchGithubRepositoriesNoResults value)? noResults,
    TResult Function(_QueryTextChange value)? queryTextChange,
    TResult Function(_FetchGithubRepositoriesPageSuccess value)?
        fetchGithubRepositoriesPageSucesss,
    TResult Function(_FetchGithubRepositoriesPageFailure value)?
        fetchGithubRepositoriesPageFailure,
    required TResult orElse(),
  }) {
    if (fetchGithubRepositoriesPageSucesss != null) {
      return fetchGithubRepositoriesPageSucesss(this);
    }
    return orElse();
  }
}

abstract class _FetchGithubRepositoriesPageSuccess
    implements GithubRepositoriesState {
  const factory _FetchGithubRepositoriesPageSuccess(
          {required final bool hasNextPage,
          required final int nextPageNumber,
          required final List<GithubRepositoryModel> repositories}) =
      _$_FetchGithubRepositoriesPageSuccess;

  bool get hasNextPage;
  int get nextPageNumber;
  List<GithubRepositoryModel> get repositories;
  @JsonKey(ignore: true)
  _$$_FetchGithubRepositoriesPageSuccessCopyWith<
          _$_FetchGithubRepositoriesPageSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchGithubRepositoriesPageFailureCopyWith<$Res> {
  factory _$$_FetchGithubRepositoriesPageFailureCopyWith(
          _$_FetchGithubRepositoriesPageFailure value,
          $Res Function(_$_FetchGithubRepositoriesPageFailure) then) =
      __$$_FetchGithubRepositoriesPageFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$_FetchGithubRepositoriesPageFailureCopyWithImpl<$Res>
    extends _$GithubRepositoriesStateCopyWithImpl<$Res,
        _$_FetchGithubRepositoriesPageFailure>
    implements _$$_FetchGithubRepositoriesPageFailureCopyWith<$Res> {
  __$$_FetchGithubRepositoriesPageFailureCopyWithImpl(
      _$_FetchGithubRepositoriesPageFailure _value,
      $Res Function(_$_FetchGithubRepositoriesPageFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_FetchGithubRepositoriesPageFailure(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_FetchGithubRepositoriesPageFailure
    implements _FetchGithubRepositoriesPageFailure {
  const _$_FetchGithubRepositoriesPageFailure({required this.error});

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GithubRepositoriesState.fetchGithubRepositoriesPageFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchGithubRepositoriesPageFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchGithubRepositoriesPageFailureCopyWith<
          _$_FetchGithubRepositoriesPageFailure>
      get copyWith => __$$_FetchGithubRepositoriesPageFailureCopyWithImpl<
          _$_FetchGithubRepositoriesPageFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noResults,
    required TResult Function() queryTextChange,
    required TResult Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)
        fetchGithubRepositoriesPageSucesss,
    required TResult Function(dynamic error) fetchGithubRepositoriesPageFailure,
  }) {
    return fetchGithubRepositoriesPageFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noResults,
    TResult? Function()? queryTextChange,
    TResult? Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)?
        fetchGithubRepositoriesPageSucesss,
    TResult? Function(dynamic error)? fetchGithubRepositoriesPageFailure,
  }) {
    return fetchGithubRepositoriesPageFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noResults,
    TResult Function()? queryTextChange,
    TResult Function(bool hasNextPage, int nextPageNumber,
            List<GithubRepositoryModel> repositories)?
        fetchGithubRepositoriesPageSucesss,
    TResult Function(dynamic error)? fetchGithubRepositoriesPageFailure,
    required TResult orElse(),
  }) {
    if (fetchGithubRepositoriesPageFailure != null) {
      return fetchGithubRepositoriesPageFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchGithubRepositoriesNoResults value)
        noResults,
    required TResult Function(_QueryTextChange value) queryTextChange,
    required TResult Function(_FetchGithubRepositoriesPageSuccess value)
        fetchGithubRepositoriesPageSucesss,
    required TResult Function(_FetchGithubRepositoriesPageFailure value)
        fetchGithubRepositoriesPageFailure,
  }) {
    return fetchGithubRepositoriesPageFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchGithubRepositoriesNoResults value)? noResults,
    TResult? Function(_QueryTextChange value)? queryTextChange,
    TResult? Function(_FetchGithubRepositoriesPageSuccess value)?
        fetchGithubRepositoriesPageSucesss,
    TResult? Function(_FetchGithubRepositoriesPageFailure value)?
        fetchGithubRepositoriesPageFailure,
  }) {
    return fetchGithubRepositoriesPageFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchGithubRepositoriesNoResults value)? noResults,
    TResult Function(_QueryTextChange value)? queryTextChange,
    TResult Function(_FetchGithubRepositoriesPageSuccess value)?
        fetchGithubRepositoriesPageSucesss,
    TResult Function(_FetchGithubRepositoriesPageFailure value)?
        fetchGithubRepositoriesPageFailure,
    required TResult orElse(),
  }) {
    if (fetchGithubRepositoriesPageFailure != null) {
      return fetchGithubRepositoriesPageFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchGithubRepositoriesPageFailure
    implements GithubRepositoriesState {
  const factory _FetchGithubRepositoriesPageFailure(
      {required final dynamic error}) = _$_FetchGithubRepositoriesPageFailure;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$_FetchGithubRepositoriesPageFailureCopyWith<
          _$_FetchGithubRepositoriesPageFailure>
      get copyWith => throw _privateConstructorUsedError;
}
