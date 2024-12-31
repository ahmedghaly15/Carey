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
    // Ensuring minimum length
    if (phoneNumber.length <= 5) {
      // For very short numbers, mask everything except the first and last character
      return '${phoneNumber[0]}*****${phoneNumber[phoneNumber.length - 1]}';
    }

    // Calculate how many characters to show at the start and end
    final visibleStartLength = (phoneNumber.length / 3).floor();
    final visibleEndLength = (phoneNumber.length / 3).ceil();
    final invisibleLength =
        phoneNumber.length - visibleStartLength - visibleEndLength;

    // Build the masked phone number
    return '${phoneNumber.substring(0, visibleStartLength)}${'*' * invisibleLength}${phoneNumber.substring(phoneNumber.length - visibleEndLength)}';
  }

  static String _maskEmail(String email) {
    final parts = email.split('@');
    final namePart = parts[0];
    final domainPart = parts[1];

    if (namePart.length <= 2) {
      // For very short names, mask everything except the first and last character
      return '${namePart[0]}*****${namePart[namePart.length - 1]}@$domainPart';
    }

    // Using floor to get less visible characters at the start than at the end
    final visibleStartLength = (namePart.length / 3).floor();
    // Using ceil to get less visible characters at the end than at the start
    final visibleEndLength = (namePart.length / 3).ceil();
    final invisibleLength =
        namePart.length - visibleStartLength - visibleEndLength;

    final maskedNamedPart =
        '${namePart.substring(0, visibleStartLength)}${'*' * invisibleLength}${namePart.substring(namePart.length - visibleEndLength)}';

    return '$maskedNamedPart@$domainPart';
  }
}
