// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() client,
    required TResult Function() network,
    required TResult Function() server,
    required TResult Function() timeout,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? client,
    TResult? Function()? network,
    TResult? Function()? server,
    TResult? Function()? timeout,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? client,
    TResult Function()? network,
    TResult Function()? server,
    TResult Function()? timeout,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Client value) client,
    required TResult Function(_Network value) network,
    required TResult Function(_Server value) server,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Client value)? client,
    TResult? Function(_Network value)? network,
    TResult? Function(_Server value)? server,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Client value)? client,
    TResult Function(_Network value)? network,
    TResult Function(_Server value)? server,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res, AppError>;
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res, $Val extends AppError>
    implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ClientCopyWith<$Res> {
  factory _$$_ClientCopyWith(_$_Client value, $Res Function(_$_Client) then) =
      __$$_ClientCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClientCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$_Client>
    implements _$$_ClientCopyWith<$Res> {
  __$$_ClientCopyWithImpl(_$_Client _value, $Res Function(_$_Client) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Client implements _Client {
  const _$_Client();

  @override
  String toString() {
    return 'AppError.client()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Client);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() client,
    required TResult Function() network,
    required TResult Function() server,
    required TResult Function() timeout,
    required TResult Function() unknown,
  }) {
    return client();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? client,
    TResult? Function()? network,
    TResult? Function()? server,
    TResult? Function()? timeout,
    TResult? Function()? unknown,
  }) {
    return client?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? client,
    TResult Function()? network,
    TResult Function()? server,
    TResult Function()? timeout,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (client != null) {
      return client();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Client value) client,
    required TResult Function(_Network value) network,
    required TResult Function(_Server value) server,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unknown value) unknown,
  }) {
    return client(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Client value)? client,
    TResult? Function(_Network value)? network,
    TResult? Function(_Server value)? server,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return client?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Client value)? client,
    TResult Function(_Network value)? network,
    TResult Function(_Server value)? server,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (client != null) {
      return client(this);
    }
    return orElse();
  }
}

abstract class _Client implements AppError {
  const factory _Client() = _$_Client;
}

/// @nodoc
abstract class _$$_NetworkCopyWith<$Res> {
  factory _$$_NetworkCopyWith(
          _$_Network value, $Res Function(_$_Network) then) =
      __$$_NetworkCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$_Network>
    implements _$$_NetworkCopyWith<$Res> {
  __$$_NetworkCopyWithImpl(_$_Network _value, $Res Function(_$_Network) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Network implements _Network {
  const _$_Network();

  @override
  String toString() {
    return 'AppError.network()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Network);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() client,
    required TResult Function() network,
    required TResult Function() server,
    required TResult Function() timeout,
    required TResult Function() unknown,
  }) {
    return network();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? client,
    TResult? Function()? network,
    TResult? Function()? server,
    TResult? Function()? timeout,
    TResult? Function()? unknown,
  }) {
    return network?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? client,
    TResult Function()? network,
    TResult Function()? server,
    TResult Function()? timeout,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Client value) client,
    required TResult Function(_Network value) network,
    required TResult Function(_Server value) server,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unknown value) unknown,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Client value)? client,
    TResult? Function(_Network value)? network,
    TResult? Function(_Server value)? server,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Client value)? client,
    TResult Function(_Network value)? network,
    TResult Function(_Server value)? server,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _Network implements AppError {
  const factory _Network() = _$_Network;
}

/// @nodoc
abstract class _$$_ServerCopyWith<$Res> {
  factory _$$_ServerCopyWith(_$_Server value, $Res Function(_$_Server) then) =
      __$$_ServerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$_Server>
    implements _$$_ServerCopyWith<$Res> {
  __$$_ServerCopyWithImpl(_$_Server _value, $Res Function(_$_Server) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Server implements _Server {
  const _$_Server();

  @override
  String toString() {
    return 'AppError.server()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Server);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() client,
    required TResult Function() network,
    required TResult Function() server,
    required TResult Function() timeout,
    required TResult Function() unknown,
  }) {
    return server();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? client,
    TResult? Function()? network,
    TResult? Function()? server,
    TResult? Function()? timeout,
    TResult? Function()? unknown,
  }) {
    return server?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? client,
    TResult Function()? network,
    TResult Function()? server,
    TResult Function()? timeout,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Client value) client,
    required TResult Function(_Network value) network,
    required TResult Function(_Server value) server,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unknown value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Client value)? client,
    TResult? Function(_Network value)? network,
    TResult? Function(_Server value)? server,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Client value)? client,
    TResult Function(_Network value)? network,
    TResult Function(_Server value)? server,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server implements AppError {
  const factory _Server() = _$_Server;
}

/// @nodoc
abstract class _$$_TimeoutCopyWith<$Res> {
  factory _$$_TimeoutCopyWith(
          _$_Timeout value, $Res Function(_$_Timeout) then) =
      __$$_TimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TimeoutCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$_Timeout>
    implements _$$_TimeoutCopyWith<$Res> {
  __$$_TimeoutCopyWithImpl(_$_Timeout _value, $Res Function(_$_Timeout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Timeout implements _Timeout {
  const _$_Timeout();

  @override
  String toString() {
    return 'AppError.timeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Timeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() client,
    required TResult Function() network,
    required TResult Function() server,
    required TResult Function() timeout,
    required TResult Function() unknown,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? client,
    TResult? Function()? network,
    TResult? Function()? server,
    TResult? Function()? timeout,
    TResult? Function()? unknown,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? client,
    TResult Function()? network,
    TResult Function()? server,
    TResult Function()? timeout,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Client value) client,
    required TResult Function(_Network value) network,
    required TResult Function(_Server value) server,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unknown value) unknown,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Client value)? client,
    TResult? Function(_Network value)? network,
    TResult? Function(_Server value)? server,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Client value)? client,
    TResult Function(_Network value)? network,
    TResult Function(_Server value)? server,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _Timeout implements AppError {
  const factory _Timeout() = _$_Timeout;
}

/// @nodoc
abstract class _$$_UnknownCopyWith<$Res> {
  factory _$$_UnknownCopyWith(
          _$_Unknown value, $Res Function(_$_Unknown) then) =
      __$$_UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnknownCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$_Unknown>
    implements _$$_UnknownCopyWith<$Res> {
  __$$_UnknownCopyWithImpl(_$_Unknown _value, $Res Function(_$_Unknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unknown implements _Unknown {
  const _$_Unknown();

  @override
  String toString() {
    return 'AppError.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() client,
    required TResult Function() network,
    required TResult Function() server,
    required TResult Function() timeout,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? client,
    TResult? Function()? network,
    TResult? Function()? server,
    TResult? Function()? timeout,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? client,
    TResult Function()? network,
    TResult Function()? server,
    TResult Function()? timeout,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Client value) client,
    required TResult Function(_Network value) network,
    required TResult Function(_Server value) server,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Client value)? client,
    TResult? Function(_Network value)? network,
    TResult? Function(_Server value)? server,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Client value)? client,
    TResult Function(_Network value)? network,
    TResult Function(_Server value)? server,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements AppError {
  const factory _Unknown() = _$_Unknown;
}
