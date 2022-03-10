class Validators {
  static bool hasMatch(String? value, String pattern) {
    return (value == null) ? false : RegExp(pattern).hasMatch(value);
  }

  static bool isNumericOnly(String s) => hasMatch(s, r'^\d+$');
}
