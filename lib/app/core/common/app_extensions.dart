extension ExtendedString on String {
  bool asBool() => this == null ? false : this.toLowerCase() == 'true';

  bool get nullOrEmpty => this == null || this.isEmpty;
}
