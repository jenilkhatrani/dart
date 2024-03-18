import 'dart:io';

void main() {
  List<int> array = [];

  while (true) {
    print("\nMenu:");
    print("1. Insert");
    print("2. Delete");
    print("3. Update");
    print("4. View");
    print("5. Exit");
    stdout.write("Enter your choice: ");
    var choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        insertElement(array);
        break;
      case 2:
        deleteElement(array);
        break;
      case 3:
        updateElement(array);
        break;
      case 4:
        viewElements(array);
        break;
      case 5:
        print("Exiting the program...");
        exit(0);
      default:
        print("Invalid choice. Please enter a valid option.");
    }
  }
}

void insertElement(List<int> array) {
  stdout.write("Enter the element to insert: ");
  var element = int.parse(stdin.readLineSync()!);
  array.add(element);
  print("Element $element inserted successfully.");
}

void deleteElement(List<int> array) {
  if (array.isEmpty) {
    print("Array is empty. No elements to delete.");
    return;
  }
  viewElements(array);
  stdout.write("Enter the index of the element to delete: ");
  var index = int.parse(stdin.readLineSync()!);
  if (index < 0 || index >= array.length) {
    print("Invalid index. Please enter a valid index.");
    return;
  }
  var deletedElement = array.removeAt(index);
  print("Element $deletedElement deleted successfully.");
}

void updateElement(List<int> array) {
  if (array.isEmpty) {
    print("Array is empty. No elements to update.");
    return;
  }
  viewElements(array);
  stdout.write("Enter the index of the element to update: ");
  var index = int.parse(stdin.readLineSync()!);
  if (index < 0 || index >= array.length) {
    print("Invalid index. Please enter a valid index.");
    return;
  }
  stdout.write("Enter the new value for the element: ");
  var newValue = int.parse(stdin.readLineSync()!);
  array[index] = newValue;
  print("Element at index $index updated successfully.");
}

void viewElements(List<int> array) {
  if (array.isEmpty) {
    print("Array is empty.");
    return;
  }
  print("Elements in the array:");
  for (var i = 0; i < array.length; i++) {
    print("[$i]: ${array[i]}");
  }
}
