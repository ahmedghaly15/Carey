class TextMaskMaker {
  TextMaskMaker._();

  static String maskPhoneNumber(String phoneNumber) {
    if (phoneNumber.length < 5) return phoneNumber; // Ensuring minimum length
    return '${phoneNumber.substring(0, 5)}*****${phoneNumber.substring(phoneNumber.length - 2)}';
  }

  static String maskEmail(String email) {
    final parts = email.split('@');
    final namePart = parts[0];
    final domainPart = parts[1];
    final visiblePart =
        '${namePart.substring(0, 4)}*****${namePart.substring(namePart.length - 2)}'; // Show first 4 characters
    return '$visiblePart@$domainPart';
  }
}
