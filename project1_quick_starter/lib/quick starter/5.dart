import 'dart:io';

void main() {
  List<List<int>> matrix = createMatrix(3, 3);

  while (true) {
    print("\nMenu:");
    print("1. Sum of all elements");
    print("2. Sum of specific row");
    print("3. Sum of specific column");
    print("4. Sum of diagonal elements");
    print("5. Sum of anti-diagonal elements");
    print("0. Exit");
    stdout.write("Enter your choice: ");
    var choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Sum of all elements: ${sumOfAllElements(matrix)}");
        break;
      case 2:
        stdout.write("Enter the row index: ");
        var row = int.parse(stdin.readLineSync()!);
        print("Sum of row $row: ${sumOfRow(matrix, row)}");
        break;
      case 3:
        stdout.write("Enter the column index: ");
        var column = int.parse(stdin.readLineSync()!);
        print("Sum of column $column: ${sumOfColumn(matrix, column)}");
        break;
      case 4:
        print("Sum of diagonal elements: ${sumOfDiagonal(matrix)}");
        break;
      case 5:
        print("Sum of anti-diagonal elements: ${sumOfAntiDiagonal(matrix)}");
        break;
      case 0:
        print("Exiting the program...");
        exit(0);
      default:
        print("Invalid choice. Please enter a valid option.");
    }
  }
}

List<List<int>> createMatrix(int rows, int columns) {
  List<List<int>> matrix = [];
  for (var i = 0; i < rows; i++) {
    stdout.write("Enter space-separated elements for row ${i + 1}: ");
    var input = stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();
    if (input.length != columns) {
      print("Invalid input. Please enter $columns elements.");
      i--;
      continue;
    }
    matrix.add(input);
  }
  return matrix;
}

int sumOfAllElements(List<List<int>> matrix) {
  int sum = 0;
  for (var row in matrix) {
    sum += row.reduce((value, element) => value + element);
  }
  return sum;
}

int sumOfRow(List<List<int>> matrix, int rowIndex) {
  if (rowIndex < 0 || rowIndex >= matrix.length) {
    print("Invalid row index.");
    return 0;
  }
  return matrix[rowIndex].reduce((value, element) => value + element);
}

int sumOfColumn(List<List<int>> matrix, int columnIndex) {
  if (columnIndex < 0 || columnIndex >= matrix[0].length) {
    print("Invalid column index.");
    return 0;
  }
  int sum = 0;
  for (var row in matrix) {
    sum += row[columnIndex];
  }
  return sum;
}

int sumOfDiagonal(List<List<int>> matrix) {
  int sum = 0;
  for (var i = 0; i < matrix.length; i++) {
    sum += matrix[i][i];
  }
  return sum;
}

int sumOfAntiDiagonal(List<List<int>> matrix) {
  int sum = 0;
  for (var i = 0; i < matrix.length; i++) {
    sum += matrix[i][matrix.length - 1 - i];
  }
  return sum;
}
