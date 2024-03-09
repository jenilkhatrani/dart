import 'dart:io';

void main() {
  List<String> indianStates = [];

  print('Enter Indian states (type "done" when finished):');
  while (true) {
    String input = stdin.readLineSync()!;
    if (input.toLowerCase() == 'done') {
      break;
    }
    indianStates.add(input);
  }

  print('\nList of Indian states:');
  for (var state in indianStates) {
    print(state);
  }
}