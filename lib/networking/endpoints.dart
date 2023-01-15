// ignore_for_file: library_private_types_in_public_api

class Endpoints {
  const Endpoints._();

  static _Repositories repositories = _Repositories();
  static _Search search = _Search();
}

class _Repositories {
  static const String _prefix = '/repos';

  String issues({
    required String ownerName,
    required String repositoryName,
  }) =>
      '$_prefix/$ownerName/$repositoryName/issues';

  String repository({
    required String ownerName,
    required String repositoryName,
  }) =>
      '$_prefix/$ownerName/$repositoryName';
}

class _Search {
  static const String _prefix = '/search';

  final String repositories = '$_prefix/repositories';
}
