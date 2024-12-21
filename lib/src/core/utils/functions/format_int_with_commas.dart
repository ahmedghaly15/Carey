String formatIntWithCommas(int number) {
  // Convert the number to a string
  String numStr = number.toString();

  // Start from the end of the string and add commas every three digits
  StringBuffer buffer = StringBuffer();
  int count = 0;

  for (int i = numStr.length - 1; i >= 0; i--) {
    buffer.write(numStr[i]);
    count++;

    // Add a comma every three digits, but not at the end
    if (count % 3 == 0 && i != 0) {
      buffer.write(',');
    }
  }

  // Reverse the string back
  return buffer.toString().split('').reversed.join();
}
