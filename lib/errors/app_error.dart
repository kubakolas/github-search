import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_error.freezed.dart';

@freezed
class AppError with _$AppError {
  const factory AppError.client() = _Client;
  const factory AppError.network() = _Network;
  const factory AppError.server() = _Server;
  const factory AppError.timeout() = _Timeout;
  const factory AppError.unknown() = _Unknown;
}
