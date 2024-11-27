class ValidatorsUtils {
  static String? validatePassword(String? value) {
    if (value == null || value.length < 5) {
      return 'Invalid password';
    } else {
      return null;
    }
  }

  static String? validateEmail(String? value) {
    if (value == null || !value.contains('@')) {
      return 'Invalid email';
    } else {
      return null;
    }
  }
}
