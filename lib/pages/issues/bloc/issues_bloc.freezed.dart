// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'issues_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IssuesEvent {
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetchIssuesPageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? fetchIssuesPageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetchIssuesPageRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchIssuesPageRequested value)
        fetchIssuesPageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchIssuesPageRequested value)?
        fetchIssuesPageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchIssuesPageRequested value)? fetchIssuesPageRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IssuesEventCopyWith<IssuesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssuesEventCopyWith<$Res> {
  factory $IssuesEventCopyWith(
          IssuesEvent value, $Res Function(IssuesEvent) then) =
      _$IssuesEventCopyWithImpl<$Res, IssuesEvent>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class _$IssuesEventCopyWithImpl<$Res, $Val extends IssuesEvent>
    implements $IssuesEventCopyWith<$Res> {
  _$IssuesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchIssuesPageRequestedCopyWith<$Res>
    implements $IssuesEventCopyWith<$Res> {
  factory _$$_FetchIssuesPageRequestedCopyWith(
          _$_FetchIssuesPageRequested value,
          $Res Function(_$_FetchIssuesPageRequested) then) =
      __$$_FetchIssuesPageRequestedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$_FetchIssuesPageRequestedCopyWithImpl<$Res>
    extends _$IssuesEventCopyWithImpl<$Res, _$_FetchIssuesPageRequested>
    implements _$$_FetchIssuesPageRequestedCopyWith<$Res> {
  __$$_FetchIssuesPageRequestedCopyWithImpl(_$_FetchIssuesPageRequested _value,
      $Res Function(_$_FetchIssuesPageRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$_FetchIssuesPageRequested(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchIssuesPageRequested implements _FetchIssuesPageRequested {
  const _$_FetchIssuesPageRequested({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'IssuesEvent.fetchIssuesPageRequested(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchIssuesPageRequested &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchIssuesPageRequestedCopyWith<_$_FetchIssuesPageRequested>
      get copyWith => __$$_FetchIssuesPageRequestedCopyWithImpl<
          _$_FetchIssuesPageRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetchIssuesPageRequested,
  }) {
    return fetchIssuesPageRequested(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? fetchIssuesPageRequested,
  }) {
    return fetchIssuesPageRequested?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetchIssuesPageRequested,
    required TResult orElse(),
  }) {
    if (fetchIssuesPageRequested != null) {
      return fetchIssuesPageRequested(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchIssuesPageRequested value)
        fetchIssuesPageRequested,
  }) {
    return fetchIssuesPageRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchIssuesPageRequested value)?
        fetchIssuesPageRequested,
  }) {
    return fetchIssuesPageRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchIssuesPageRequested value)? fetchIssuesPageRequested,
    required TResult orElse(),
  }) {
    if (fetchIssuesPageRequested != null) {
      return fetchIssuesPageRequested(this);
    }
    return orElse();
  }
}

abstract class _FetchIssuesPageRequested implements IssuesEvent {
  const factory _FetchIssuesPageRequested({required final int page}) =
      _$_FetchIssuesPageRequested;

  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_FetchIssuesPageRequestedCopyWith<_$_FetchIssuesPageRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IssuesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool hasNextPage, List<IssueModel> issues, int nextPageNumber)
        fetchIssuesPageSucesss,
    required TResult Function(dynamic error) fetchIssuesPageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            bool hasNextPage, List<IssueModel> issues, int nextPageNumber)?
        fetchIssuesPageSucesss,
    TResult? Function(dynamic error)? fetchIssuesPageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            bool hasNextPage, List<IssueModel> issues, int nextPageNumber)?
        fetchIssuesPageSucesss,
    TResult Function(dynamic error)? fetchIssuesPageFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchIssuesPageSuccess value)
        fetchIssuesPageSucesss,
    required TResult Function(_FetchIssuesPageFailure value)
        fetchIssuesPageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchIssuesPageSuccess value)? fetchIssuesPageSucesss,
    TResult? Function(_FetchIssuesPageFailure value)? fetchIssuesPageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchIssuesPageSuccess value)? fetchIssuesPageSucesss,
    TResult Function(_FetchIssuesPageFailure value)? fetchIssuesPageFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssuesStateCopyWith<$Res> {
  factory $IssuesStateCopyWith(
          IssuesState value, $Res Function(IssuesState) then) =
      _$IssuesStateCopyWithImpl<$Res, IssuesState>;
}

/// @nodoc
class _$IssuesStateCopyWithImpl<$Res, $Val extends IssuesState>
    implements $IssuesStateCopyWith<$Res> {
  _$IssuesStateCopyWithImpl(this._value, this._then);

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
    extends _$IssuesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'IssuesState.initial()';
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
    required TResult Function(
            bool hasNextPage, List<IssueModel> issues, int nextPageNumber)
        fetchIssuesPageSucesss,
    required TResult Function(dynamic error) fetchIssuesPageFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            bool hasNextPage, List<IssueModel> issues, int nextPageNumber)?
        fetchIssuesPageSucesss,
    TResult? Function(dynamic error)? fetchIssuesPageFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            bool hasNextPage, List<IssueModel> issues, int nextPageNumber)?
        fetchIssuesPageSucesss,
    TResult Function(dynamic error)? fetchIssuesPageFailure,
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
    required TResult Function(_FetchIssuesPageSuccess value)
        fetchIssuesPageSucesss,
    required TResult Function(_FetchIssuesPageFailure value)
        fetchIssuesPageFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchIssuesPageSuccess value)? fetchIssuesPageSucesss,
    TResult? Function(_FetchIssuesPageFailure value)? fetchIssuesPageFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchIssuesPageSuccess value)? fetchIssuesPageSucesss,
    TResult Function(_FetchIssuesPageFailure value)? fetchIssuesPageFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements IssuesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_FetchIssuesPageSuccessCopyWith<$Res> {
  factory _$$_FetchIssuesPageSuccessCopyWith(_$_FetchIssuesPageSuccess value,
          $Res Function(_$_FetchIssuesPageSuccess) then) =
      __$$_FetchIssuesPageSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasNextPage, List<IssueModel> issues, int nextPageNumber});
}

/// @nodoc
class __$$_FetchIssuesPageSuccessCopyWithImpl<$Res>
    extends _$IssuesStateCopyWithImpl<$Res, _$_FetchIssuesPageSuccess>
    implements _$$_FetchIssuesPageSuccessCopyWith<$Res> {
  __$$_FetchIssuesPageSuccessCopyWithImpl(_$_FetchIssuesPageSuccess _value,
      $Res Function(_$_FetchIssuesPageSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasNextPage = null,
    Object? issues = null,
    Object? nextPageNumber = null,
  }) {
    return _then(_$_FetchIssuesPageSuccess(
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      issues: null == issues
          ? _value._issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<IssueModel>,
      nextPageNumber: null == nextPageNumber
          ? _value.nextPageNumber
          : nextPageNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchIssuesPageSuccess implements _FetchIssuesPageSuccess {
  const _$_FetchIssuesPageSuccess(
      {required this.hasNextPage,
      required final List<IssueModel> issues,
      required this.nextPageNumber})
      : _issues = issues;

  @override
  final bool hasNextPage;
  final List<IssueModel> _issues;
  @override
  List<IssueModel> get issues {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_issues);
  }

  @override
  final int nextPageNumber;

  @override
  String toString() {
    return 'IssuesState.fetchIssuesPageSucesss(hasNextPage: $hasNextPage, issues: $issues, nextPageNumber: $nextPageNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchIssuesPageSuccess &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            const DeepCollectionEquality().equals(other._issues, _issues) &&
            (identical(other.nextPageNumber, nextPageNumber) ||
                other.nextPageNumber == nextPageNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasNextPage,
      const DeepCollectionEquality().hash(_issues), nextPageNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchIssuesPageSuccessCopyWith<_$_FetchIssuesPageSuccess> get copyWith =>
      __$$_FetchIssuesPageSuccessCopyWithImpl<_$_FetchIssuesPageSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool hasNextPage, List<IssueModel> issues, int nextPageNumber)
        fetchIssuesPageSucesss,
    required TResult Function(dynamic error) fetchIssuesPageFailure,
  }) {
    return fetchIssuesPageSucesss(hasNextPage, issues, nextPageNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            bool hasNextPage, List<IssueModel> issues, int nextPageNumber)?
        fetchIssuesPageSucesss,
    TResult? Function(dynamic error)? fetchIssuesPageFailure,
  }) {
    return fetchIssuesPageSucesss?.call(hasNextPage, issues, nextPageNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            bool hasNextPage, List<IssueModel> issues, int nextPageNumber)?
        fetchIssuesPageSucesss,
    TResult Function(dynamic error)? fetchIssuesPageFailure,
    required TResult orElse(),
  }) {
    if (fetchIssuesPageSucesss != null) {
      return fetchIssuesPageSucesss(hasNextPage, issues, nextPageNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchIssuesPageSuccess value)
        fetchIssuesPageSucesss,
    required TResult Function(_FetchIssuesPageFailure value)
        fetchIssuesPageFailure,
  }) {
    return fetchIssuesPageSucesss(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchIssuesPageSuccess value)? fetchIssuesPageSucesss,
    TResult? Function(_FetchIssuesPageFailure value)? fetchIssuesPageFailure,
  }) {
    return fetchIssuesPageSucesss?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchIssuesPageSuccess value)? fetchIssuesPageSucesss,
    TResult Function(_FetchIssuesPageFailure value)? fetchIssuesPageFailure,
    required TResult orElse(),
  }) {
    if (fetchIssuesPageSucesss != null) {
      return fetchIssuesPageSucesss(this);
    }
    return orElse();
  }
}

abstract class _FetchIssuesPageSuccess implements IssuesState {
  const factory _FetchIssuesPageSuccess(
      {required final bool hasNextPage,
      required final List<IssueModel> issues,
      required final int nextPageNumber}) = _$_FetchIssuesPageSuccess;

  bool get hasNextPage;
  List<IssueModel> get issues;
  int get nextPageNumber;
  @JsonKey(ignore: true)
  _$$_FetchIssuesPageSuccessCopyWith<_$_FetchIssuesPageSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchIssuesPageFailureCopyWith<$Res> {
  factory _$$_FetchIssuesPageFailureCopyWith(_$_FetchIssuesPageFailure value,
          $Res Function(_$_FetchIssuesPageFailure) then) =
      __$$_FetchIssuesPageFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$_FetchIssuesPageFailureCopyWithImpl<$Res>
    extends _$IssuesStateCopyWithImpl<$Res, _$_FetchIssuesPageFailure>
    implements _$$_FetchIssuesPageFailureCopyWith<$Res> {
  __$$_FetchIssuesPageFailureCopyWithImpl(_$_FetchIssuesPageFailure _value,
      $Res Function(_$_FetchIssuesPageFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_FetchIssuesPageFailure(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_FetchIssuesPageFailure implements _FetchIssuesPageFailure {
  const _$_FetchIssuesPageFailure({required this.error});

  @override
  final dynamic error;

  @override
  String toString() {
    return 'IssuesState.fetchIssuesPageFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchIssuesPageFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchIssuesPageFailureCopyWith<_$_FetchIssuesPageFailure> get copyWith =>
      __$$_FetchIssuesPageFailureCopyWithImpl<_$_FetchIssuesPageFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool hasNextPage, List<IssueModel> issues, int nextPageNumber)
        fetchIssuesPageSucesss,
    required TResult Function(dynamic error) fetchIssuesPageFailure,
  }) {
    return fetchIssuesPageFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            bool hasNextPage, List<IssueModel> issues, int nextPageNumber)?
        fetchIssuesPageSucesss,
    TResult? Function(dynamic error)? fetchIssuesPageFailure,
  }) {
    return fetchIssuesPageFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            bool hasNextPage, List<IssueModel> issues, int nextPageNumber)?
        fetchIssuesPageSucesss,
    TResult Function(dynamic error)? fetchIssuesPageFailure,
    required TResult orElse(),
  }) {
    if (fetchIssuesPageFailure != null) {
      return fetchIssuesPageFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchIssuesPageSuccess value)
        fetchIssuesPageSucesss,
    required TResult Function(_FetchIssuesPageFailure value)
        fetchIssuesPageFailure,
  }) {
    return fetchIssuesPageFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchIssuesPageSuccess value)? fetchIssuesPageSucesss,
    TResult? Function(_FetchIssuesPageFailure value)? fetchIssuesPageFailure,
  }) {
    return fetchIssuesPageFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchIssuesPageSuccess value)? fetchIssuesPageSucesss,
    TResult Function(_FetchIssuesPageFailure value)? fetchIssuesPageFailure,
    required TResult orElse(),
  }) {
    if (fetchIssuesPageFailure != null) {
      return fetchIssuesPageFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchIssuesPageFailure implements IssuesState {
  const factory _FetchIssuesPageFailure({required final dynamic error}) =
      _$_FetchIssuesPageFailure;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$_FetchIssuesPageFailureCopyWith<_$_FetchIssuesPageFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
