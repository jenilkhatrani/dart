import 'dart:io';

void main() {
  List<List<int>> matrix1 = createMatrix(3, 3);
  List<List<int>> matrix2 = createMatrix(3, 3);

  print("Matrix 1:");
  printMatrix(matrix1);

  print("\nMatrix 2:");
  printMatrix(matrix2);

  List<List<int>> result = addMatrices(matrix1, matrix2);

  print("\nResultant Matrix:");
  printMatrix(result);
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

List<List<int>> addMatrices(List<List<int>> matrix1, List<List<int>> matrix2) {
  List<List<int>> result = [];
  for (var i = 0; i < matrix1.length; i++) {
    List<int> row = [];
    for (var j = 0; j < matrix1[i].length; j++) {
      row.add(matrix1[i][j] + matrix2[i][j]);
    }
    result.add(row);
  }
  return result;
}

void printMatrix(List<List<int>> matrix) {
  for (var row in matrix) {
    print(row);
  }
}
