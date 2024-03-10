import 'dart:io';

void main() {
  List<String> elements = [];

  // Prompt user to enter elements until they enter 'done'
  while (true) {
    String inputElement = input('Enter an element (or "done" to finish): ');
    if (inputElement.toLowerCase() == 'done') {
      break;
    } else {
      elements.add(inputElement);
    }
  }


  List<String> uniqueElements = elements.toSet().toList();
  print('\nUnique Elements:');
  for (var element in uniqueElements) {
    print(element);
  }
}

String input(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync()!;
}