extension StringExtensions on String {
  bool get isBlank => trim().isEmpty;
}

extension NullableStringExtensions on String? {
  bool get isNullOrBlank => this?.isBlank ?? true;

  String orEmpty() => this ?? '';
}
