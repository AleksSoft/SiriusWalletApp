extension BoolParsing on String {
  bool asBool() => this == null ? false : this.toLowerCase() == 'true';
}
