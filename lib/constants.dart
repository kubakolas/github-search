// ignore_for_file: library_private_types_in_public_api

class Constants {
  static final _DateFormats dateFormats = _DateFormats();
  static final _Headers headers = _Headers();
  static final _Networking networking = _Networking();
  static final _Pagination pagination = _Pagination();
  static final _Paths paths = _Paths();
  static final _StorageKeys storageKeys = _StorageKeys();
  static final _Theme theme = _Theme();

  const Constants._();
}

class _DateFormats {
  final String ddMMyyyy = 'dd/MM/yyyy';
}

class _Headers {
  final String bearerPrefix = 'Bearer';
  final String link = 'Link';
  final String nextPageHeaderValue = 'rel="next"';
}

class _Networking {
  final String apiBaseUrl = 'https://api.github.com/';
  final int timeoutDuration = const Duration(
    seconds: 30,
  ).inMilliseconds;
}

class _Pagination {
  final int initialPageNumber = 1;
  final int defaultPageSize = 40;
}

class _Paths {
  final String accessTokenFile = 'secrets/access_token';
}

class _StorageKeys {
  final String accessToken = 'access_token_key';
}

class _Theme {
  final String appFontFamily = 'Lato';
}
