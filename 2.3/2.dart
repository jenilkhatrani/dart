import 'dart:io';

void main() {
  stdout.write('Enter elements of the array separated by space: ');
  List<int> initialArray = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  stdout.write('Enter the number of positions to rotate: ');
  int rotateNumber = int.parse(stdin.readLineSync()!);

  print('Initial Array: $initialArray');

  List<int> finalArray = List.from(initialArray);
  for (int i = 0; i < rotateNumber; i++) {
    finalArray.add(finalArray.removeAt(0));
  }

  print('Final Array after rotating by $rotateNumber: $finalArray');
}