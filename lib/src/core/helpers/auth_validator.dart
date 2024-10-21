import 'package:carey/src/core/helpers/auth_validator_regex.dart';
import 'package:carey/src/core/utils/app_strings.dart';

class AuthValidator {
  static String? validatePasswordField(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.passwordRequired;
    } else if (value.length < 8) {
      return AppStrings.passwordInvalidLength;
    } else if (!AuthValidatorRegex.passwordHasCapitalCharacter(value)) {
      return AppStrings.passwordContainsUppercase;
    } else if (!AuthValidatorRegex.passwordHasLowercaseCharacter(value)) {
      return AppStrings.passwordContainsLowercase;
    } else if (!AuthValidatorRegex.passwordHasNumber(value)) {
      return AppStrings.passwordContainsDigit;
    } else if (!AuthValidatorRegex.passwordHasSpecialCharacter(value)) {
      return AppStrings.passwordContainsSpecial;
    }
    return null;
  }

  static String? validateEmailField(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.emailRequired;
    } else if (!AuthValidatorRegex.isEmailValid(value)) {
      return AppStrings.emailInvalid;
    }
    return null;
  }
}
