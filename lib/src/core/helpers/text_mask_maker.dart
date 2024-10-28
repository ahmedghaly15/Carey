import 'package:carey/src/core/helpers/auth_validator_regex.dart';
import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/utils/app_strings.dart';

class TextMaskMaker {
  TextMaskMaker._();

  static String maskText(String? text) {
    return text.isNullOrEmpty
        ? AppStrings.youDontHavePhoneNumber
        : (_isEmail(text!) ? _maskEmail(text) : _maskPhoneNumber(text));
  }

  static bool _isEmail(String text) => AuthValidatorRegex.isEmailValid(text);

  static String _maskPhoneNumber(String phoneNumber) {
    if (phoneNumber.length < 5) return phoneNumber; // Ensuring minimum length
    return '${phoneNumber.substring(0, 5)}*****${phoneNumber.substring(phoneNumber.length - 2)}';
  }

  static String _maskEmail(String email) {
    final parts = email.split('@');
    final namePart = parts[0];
    final domainPart = parts[1];
    final visiblePart =
        '${namePart.substring(0, 4)}*****${namePart.substring(namePart.length - 2)}'; // Show first 4 characters
    return '$visiblePart@$domainPart';
  }
}
