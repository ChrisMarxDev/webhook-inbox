extension NullableStringExtension on String? {
  String limit(int length) {
    if (this == null) {
      return '';
    } else {
      return this!.length > length ? this!.substring(0, length) : this!;
    }
  }
}
