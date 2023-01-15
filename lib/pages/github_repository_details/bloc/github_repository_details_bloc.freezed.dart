// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_repository_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GithubRepositoryDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRepositoryDetailsRequsted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRepositoryDetailsRequsted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRepositoryDetailsRequsted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRepositoryDetailsRequested value)
        fetchRepositoryDetailsRequsted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRepositoryDetailsRequested value)?
        fetchRepositoryDetailsRequsted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRepositoryDetailsRequested value)?
        fetchRepositoryDetailsRequsted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepositoryDetailsEventCopyWith<$Res> {
  factory $GithubRepositoryDetailsEventCopyWith(
          GithubRepositoryDetailsEvent value,
          $Res Function(GithubRepositoryDetailsEvent) then) =
      _$GithubRepositoryDetailsEventCopyWithImpl<$Res,
          GithubRepositoryDetailsEvent>;
}

/// @nodoc
class _$GithubRepositoryDetailsEventCopyWithImpl<$Res,
        $Val extends GithubRepositoryDetailsEvent>
    implements $GithubRepositoryDetailsEventCopyWith<$Res> {
  _$GithubRepositoryDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchRepositoryDetailsRequestedCopyWith<$Res> {
  factory _$$_FetchRepositoryDetailsRequestedCopyWith(
          _$_FetchRepositoryDetailsRequested value,
          $Res Function(_$_FetchRepositoryDetailsRequested) then) =
      __$$_FetchRepositoryDetailsRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchRepositoryDetailsRequestedCopyWithImpl<$Res>
    extends _$GithubRepositoryDetailsEventCopyWithImpl<$Res,
        _$_FetchRepositoryDetailsRequested>
    implements _$$_FetchRepositoryDetailsRequestedCopyWith<$Res> {
  __$$_FetchRepositoryDetailsRequestedCopyWithImpl(
      _$_FetchRepositoryDetailsRequested _value,
      $Res Function(_$_FetchRepositoryDetailsRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchRepositoryDetailsRequested
    implements _FetchRepositoryDetailsRequested {
  const _$_FetchRepositoryDetailsRequested();

  @override
  String toString() {
    return 'GithubRepositoryDetailsEvent.fetchRepositoryDetailsRequsted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchRepositoryDetailsRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRepositoryDetailsRequsted,
  }) {
    return fetchRepositoryDetailsRequsted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRepositoryDetailsRequsted,
  }) {
    return fetchRepositoryDetailsRequsted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRepositoryDetailsRequsted,
    required TResult orElse(),
  }) {
    if (fetchRepositoryDetailsRequsted != null) {
      return fetchRepositoryDetailsRequsted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRepositoryDetailsRequested value)
        fetchRepositoryDetailsRequsted,
  }) {
    return fetchRepositoryDetailsRequsted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRepositoryDetailsRequested value)?
        fetchRepositoryDetailsRequsted,
  }) {
    return fetchRepositoryDetailsRequsted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRepositoryDetailsRequested value)?
        fetchRepositoryDetailsRequsted,
    required TResult orElse(),
  }) {
    if (fetchRepositoryDetailsRequsted != null) {
      return fetchRepositoryDetailsRequsted(this);
    }
    return orElse();
  }
}

abstract class _FetchRepositoryDetailsRequested
    implements GithubRepositoryDetailsEvent {
  const factory _FetchRepositoryDetailsRequested() =
      _$_FetchRepositoryDetailsRequested;
}

/// @nodoc
mixin _$GithubRepositoryDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchRepositoryDetailsInProgress,
    required TResult Function(GithubRepositoryDetailsModel repository)
        fetchRepositoryDetailsSuccess,
    required TResult Function(dynamic error) fetchRepositoryDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchRepositoryDetailsInProgress,
    TResult? Function(GithubRepositoryDetailsModel repository)?
        fetchRepositoryDetailsSuccess,
    TResult? Function(dynamic error)? fetchRepositoryDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchRepositoryDetailsInProgress,
    TResult Function(GithubRepositoryDetailsModel repository)?
        fetchRepositoryDetailsSuccess,
    TResult Function(dynamic error)? fetchRepositoryDetailsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchRepositoryDetailsInprogress value)
        fetchRepositoryDetailsInProgress,
    required TResult Function(_FetchRepositoryDetailsSuccess value)
        fetchRepositoryDetailsSuccess,
    required TResult Function(_FetchRepositoryDetailsFailure value)
        fetchRepositoryDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchRepositoryDetailsInprogress value)?
        fetchRepositoryDetailsInProgress,
    TResult? Function(_FetchRepositoryDetailsSuccess value)?
        fetchRepositoryDetailsSuccess,
    TResult? Function(_FetchRepositoryDetailsFailure value)?
        fetchRepositoryDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchRepositoryDetailsInprogress value)?
        fetchRepositoryDetailsInProgress,
    TResult Function(_FetchRepositoryDetailsSuccess value)?
        fetchRepositoryDetailsSuccess,
    TResult Function(_FetchRepositoryDetailsFailure value)?
        fetchRepositoryDetailsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepositoryDetailsStateCopyWith<$Res> {
  factory $GithubRepositoryDetailsStateCopyWith(
          GithubRepositoryDetailsState value,
          $Res Function(GithubRepositoryDetailsState) then) =
      _$GithubRepositoryDetailsStateCopyWithImpl<$Res,
          GithubRepositoryDetailsState>;
}

/// @nodoc
class _$GithubRepositoryDetailsStateCopyWithImpl<$Res,
        $Val extends GithubRepositoryDetailsState>
    implements $GithubRepositoryDetailsStateCopyWith<$Res> {
  _$GithubRepositoryDetailsStateCopyWithImpl(this._value, this._then);

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
    extends _$GithubRepositoryDetailsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GithubRepositoryDetailsState.initial()';
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
    required TResult Function() fetchRepositoryDetailsInProgress,
    required TResult Function(GithubRepositoryDetailsModel repository)
        fetchRepositoryDetailsSuccess,
    required TResult Function(dynamic error) fetchRepositoryDetailsFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchRepositoryDetailsInProgress,
    TResult? Function(GithubRepositoryDetailsModel repository)?
        fetchRepositoryDetailsSuccess,
    TResult? Function(dynamic error)? fetchRepositoryDetailsFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchRepositoryDetailsInProgress,
    TResult Function(GithubRepositoryDetailsModel repository)?
        fetchRepositoryDetailsSuccess,
    TResult Function(dynamic error)? fetchRepositoryDetailsFailure,
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
    required TResult Function(_FetchRepositoryDetailsInprogress value)
        fetchRepositoryDetailsInProgress,
    required TResult Function(_FetchRepositoryDetailsSuccess value)
        fetchRepositoryDetailsSuccess,
    required TResult Function(_FetchRepositoryDetailsFailure value)
        fetchRepositoryDetailsFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchRepositoryDetailsInprogress value)?
        fetchRepositoryDetailsInProgress,
    TResult? Function(_FetchRepositoryDetailsSuccess value)?
        fetchRepositoryDetailsSuccess,
    TResult? Function(_FetchRepositoryDetailsFailure value)?
        fetchRepositoryDetailsFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchRepositoryDetailsInprogress value)?
        fetchRepositoryDetailsInProgress,
    TResult Function(_FetchRepositoryDetailsSuccess value)?
        fetchRepositoryDetailsSuccess,
    TResult Function(_FetchRepositoryDetailsFailure value)?
        fetchRepositoryDetailsFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GithubRepositoryDetailsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_FetchRepositoryDetailsInprogressCopyWith<$Res> {
  factory _$$_FetchRepositoryDetailsInprogressCopyWith(
          _$_FetchRepositoryDetailsInprogress value,
          $Res Function(_$_FetchRepositoryDetailsInprogress) then) =
      __$$_FetchRepositoryDetailsInprogressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchRepositoryDetailsInprogressCopyWithImpl<$Res>
    extends _$GithubRepositoryDetailsStateCopyWithImpl<$Res,
        _$_FetchRepositoryDetailsInprogress>
    implements _$$_FetchRepositoryDetailsInprogressCopyWith<$Res> {
  __$$_FetchRepositoryDetailsInprogressCopyWithImpl(
      _$_FetchRepositoryDetailsInprogress _value,
      $Res Function(_$_FetchRepositoryDetailsInprogress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchRepositoryDetailsInprogress
    implements _FetchRepositoryDetailsInprogress {
  const _$_FetchRepositoryDetailsInprogress();

  @override
  String toString() {
    return 'GithubRepositoryDetailsState.fetchRepositoryDetailsInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchRepositoryDetailsInprogress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchRepositoryDetailsInProgress,
    required TResult Function(GithubRepositoryDetailsModel repository)
        fetchRepositoryDetailsSuccess,
    required TResult Function(dynamic error) fetchRepositoryDetailsFailure,
  }) {
    return fetchRepositoryDetailsInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchRepositoryDetailsInProgress,
    TResult? Function(GithubRepositoryDetailsModel repository)?
        fetchRepositoryDetailsSuccess,
    TResult? Function(dynamic error)? fetchRepositoryDetailsFailure,
  }) {
    return fetchRepositoryDetailsInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchRepositoryDetailsInProgress,
    TResult Function(GithubRepositoryDetailsModel repository)?
        fetchRepositoryDetailsSuccess,
    TResult Function(dynamic error)? fetchRepositoryDetailsFailure,
    required TResult orElse(),
  }) {
    if (fetchRepositoryDetailsInProgress != null) {
      return fetchRepositoryDetailsInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchRepositoryDetailsInprogress value)
        fetchRepositoryDetailsInProgress,
    required TResult Function(_FetchRepositoryDetailsSuccess value)
        fetchRepositoryDetailsSuccess,
    required TResult Function(_FetchRepositoryDetailsFailure value)
        fetchRepositoryDetailsFailure,
  }) {
    return fetchRepositoryDetailsInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchRepositoryDetailsInprogress value)?
        fetchRepositoryDetailsInProgress,
    TResult? Function(_FetchRepositoryDetailsSuccess value)?
        fetchRepositoryDetailsSuccess,
    TResult? Function(_FetchRepositoryDetailsFailure value)?
        fetchRepositoryDetailsFailure,
  }) {
    return fetchRepositoryDetailsInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchRepositoryDetailsInprogress value)?
        fetchRepositoryDetailsInProgress,
    TResult Function(_FetchRepositoryDetailsSuccess value)?
        fetchRepositoryDetailsSuccess,
    TResult Function(_FetchRepositoryDetailsFailure value)?
        fetchRepositoryDetailsFailure,
    required TResult orElse(),
  }) {
    if (fetchRepositoryDetailsInProgress != null) {
      return fetchRepositoryDetailsInProgress(this);
    }
    return orElse();
  }
}

abstract class _FetchRepositoryDetailsInprogress
    implements GithubRepositoryDetailsState {
  const factory _FetchRepositoryDetailsInprogress() =
      _$_FetchRepositoryDetailsInprogress;
}

/// @nodoc
abstract class _$$_FetchRepositoryDetailsSuccessCopyWith<$Res> {
  factory _$$_FetchRepositoryDetailsSuccessCopyWith(
          _$_FetchRepositoryDetailsSuccess value,
          $Res Function(_$_FetchRepositoryDetailsSuccess) then) =
      __$$_FetchRepositoryDetailsSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({GithubRepositoryDetailsModel repository});
}

/// @nodoc
class __$$_FetchRepositoryDetailsSuccessCopyWithImpl<$Res>
    extends _$GithubRepositoryDetailsStateCopyWithImpl<$Res,
        _$_FetchRepositoryDetailsSuccess>
    implements _$$_FetchRepositoryDetailsSuccessCopyWith<$Res> {
  __$$_FetchRepositoryDetailsSuccessCopyWithImpl(
      _$_FetchRepositoryDetailsSuccess _value,
      $Res Function(_$_FetchRepositoryDetailsSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repository = null,
  }) {
    return _then(_$_FetchRepositoryDetailsSuccess(
      null == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as GithubRepositoryDetailsModel,
    ));
  }
}

/// @nodoc

class _$_FetchRepositoryDetailsSuccess
    implements _FetchRepositoryDetailsSuccess {
  const _$_FetchRepositoryDetailsSuccess(this.repository);

  @override
  final GithubRepositoryDetailsModel repository;

  @override
  String toString() {
    return 'GithubRepositoryDetailsState.fetchRepositoryDetailsSuccess(repository: $repository)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchRepositoryDetailsSuccess &&
            (identical(other.repository, repository) ||
                other.repository == repository));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repository);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchRepositoryDetailsSuccessCopyWith<_$_FetchRepositoryDetailsSuccess>
      get copyWith => __$$_FetchRepositoryDetailsSuccessCopyWithImpl<
          _$_FetchRepositoryDetailsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchRepositoryDetailsInProgress,
    required TResult Function(GithubRepositoryDetailsModel repository)
        fetchRepositoryDetailsSuccess,
    required TResult Function(dynamic error) fetchRepositoryDetailsFailure,
  }) {
    return fetchRepositoryDetailsSuccess(repository);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchRepositoryDetailsInProgress,
    TResult? Function(GithubRepositoryDetailsModel repository)?
        fetchRepositoryDetailsSuccess,
    TResult? Function(dynamic error)? fetchRepositoryDetailsFailure,
  }) {
    return fetchRepositoryDetailsSuccess?.call(repository);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchRepositoryDetailsInProgress,
    TResult Function(GithubRepositoryDetailsModel repository)?
        fetchRepositoryDetailsSuccess,
    TResult Function(dynamic error)? fetchRepositoryDetailsFailure,
    required TResult orElse(),
  }) {
    if (fetchRepositoryDetailsSuccess != null) {
      return fetchRepositoryDetailsSuccess(repository);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchRepositoryDetailsInprogress value)
        fetchRepositoryDetailsInProgress,
    required TResult Function(_FetchRepositoryDetailsSuccess value)
        fetchRepositoryDetailsSuccess,
    required TResult Function(_FetchRepositoryDetailsFailure value)
        fetchRepositoryDetailsFailure,
  }) {
    return fetchRepositoryDetailsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchRepositoryDetailsInprogress value)?
        fetchRepositoryDetailsInProgress,
    TResult? Function(_FetchRepositoryDetailsSuccess value)?
        fetchRepositoryDetailsSuccess,
    TResult? Function(_FetchRepositoryDetailsFailure value)?
        fetchRepositoryDetailsFailure,
  }) {
    return fetchRepositoryDetailsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchRepositoryDetailsInprogress value)?
        fetchRepositoryDetailsInProgress,
    TResult Function(_FetchRepositoryDetailsSuccess value)?
        fetchRepositoryDetailsSuccess,
    TResult Function(_FetchRepositoryDetailsFailure value)?
        fetchRepositoryDetailsFailure,
    required TResult orElse(),
  }) {
    if (fetchRepositoryDetailsSuccess != null) {
      return fetchRepositoryDetailsSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchRepositoryDetailsSuccess
    implements GithubRepositoryDetailsState {
  const factory _FetchRepositoryDetailsSuccess(
          final GithubRepositoryDetailsModel repository) =
      _$_FetchRepositoryDetailsSuccess;

  GithubRepositoryDetailsModel get repository;
  @JsonKey(ignore: true)
  _$$_FetchRepositoryDetailsSuccessCopyWith<_$_FetchRepositoryDetailsSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchRepositoryDetailsFailureCopyWith<$Res> {
  factory _$$_FetchRepositoryDetailsFailureCopyWith(
          _$_FetchRepositoryDetailsFailure value,
          $Res Function(_$_FetchRepositoryDetailsFailure) then) =
      __$$_FetchRepositoryDetailsFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$_FetchRepositoryDetailsFailureCopyWithImpl<$Res>
    extends _$GithubRepositoryDetailsStateCopyWithImpl<$Res,
        _$_FetchRepositoryDetailsFailure>
    implements _$$_FetchRepositoryDetailsFailureCopyWith<$Res> {
  __$$_FetchRepositoryDetailsFailureCopyWithImpl(
      _$_FetchRepositoryDetailsFailure _value,
      $Res Function(_$_FetchRepositoryDetailsFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_FetchRepositoryDetailsFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_FetchRepositoryDetailsFailure
    implements _FetchRepositoryDetailsFailure {
  const _$_FetchRepositoryDetailsFailure(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GithubRepositoryDetailsState.fetchRepositoryDetailsFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchRepositoryDetailsFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchRepositoryDetailsFailureCopyWith<_$_FetchRepositoryDetailsFailure>
      get copyWith => __$$_FetchRepositoryDetailsFailureCopyWithImpl<
          _$_FetchRepositoryDetailsFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchRepositoryDetailsInProgress,
    required TResult Function(GithubRepositoryDetailsModel repository)
        fetchRepositoryDetailsSuccess,
    required TResult Function(dynamic error) fetchRepositoryDetailsFailure,
  }) {
    return fetchRepositoryDetailsFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchRepositoryDetailsInProgress,
    TResult? Function(GithubRepositoryDetailsModel repository)?
        fetchRepositoryDetailsSuccess,
    TResult? Function(dynamic error)? fetchRepositoryDetailsFailure,
  }) {
    return fetchRepositoryDetailsFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchRepositoryDetailsInProgress,
    TResult Function(GithubRepositoryDetailsModel repository)?
        fetchRepositoryDetailsSuccess,
    TResult Function(dynamic error)? fetchRepositoryDetailsFailure,
    required TResult orElse(),
  }) {
    if (fetchRepositoryDetailsFailure != null) {
      return fetchRepositoryDetailsFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchRepositoryDetailsInprogress value)
        fetchRepositoryDetailsInProgress,
    required TResult Function(_FetchRepositoryDetailsSuccess value)
        fetchRepositoryDetailsSuccess,
    required TResult Function(_FetchRepositoryDetailsFailure value)
        fetchRepositoryDetailsFailure,
  }) {
    return fetchRepositoryDetailsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchRepositoryDetailsInprogress value)?
        fetchRepositoryDetailsInProgress,
    TResult? Function(_FetchRepositoryDetailsSuccess value)?
        fetchRepositoryDetailsSuccess,
    TResult? Function(_FetchRepositoryDetailsFailure value)?
        fetchRepositoryDetailsFailure,
  }) {
    return fetchRepositoryDetailsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchRepositoryDetailsInprogress value)?
        fetchRepositoryDetailsInProgress,
    TResult Function(_FetchRepositoryDetailsSuccess value)?
        fetchRepositoryDetailsSuccess,
    TResult Function(_FetchRepositoryDetailsFailure value)?
        fetchRepositoryDetailsFailure,
    required TResult orElse(),
  }) {
    if (fetchRepositoryDetailsFailure != null) {
      return fetchRepositoryDetailsFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchRepositoryDetailsFailure
    implements GithubRepositoryDetailsState {
  const factory _FetchRepositoryDetailsFailure(final dynamic error) =
      _$_FetchRepositoryDetailsFailure;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$_FetchRepositoryDetailsFailureCopyWith<_$_FetchRepositoryDetailsFailure>
      get copyWith => throw _privateConstructorUsedError;
}
