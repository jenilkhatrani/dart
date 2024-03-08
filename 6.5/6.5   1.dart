void main() {
  //comment any one because var name is same
  String userInput = 'jenil'; // Input from the user, which is not a valid integer
  // String userInput = '6'; // Input from the user, which is not a valid integer

  try {
    int parsedInt = int.parse(userInput);
    print('Parsed Integer: $parsedInt');
  } catch (e) {
    if (e is FormatException) {
      print('Error: Unable to parse input. Please enter a valid integer.');
    } else {
      print('Error: $e');
    }
  }
}