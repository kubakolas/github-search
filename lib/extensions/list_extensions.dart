extension ListExtensions<T> on List<T> {
  T? get firstOrNull => isNotEmpty ? first : null;

  List<T> copy() => [
        ...this,
      ];
}

extension NullableListExtensions<T> on List<T>? {
  List<T> orEmpty() => this ?? [];
}

extension ListWithNullableValuesExtensions<T> on List<T?> {
  List<T> filterNotNull() => copy().whereType<T>().toList();
}

extension NullableListWithNullableValuesExtensions<T> on List<T?>? {
  List<T>? filterNotNull() => orEmpty().filterNotNull();
}
