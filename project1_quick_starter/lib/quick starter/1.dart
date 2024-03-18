void printNegativeElements(List<int> array) {
  List<int> negativeElements = [];
  for (int num in array) {
    if (num < 0) {
      negativeElements.add(num);
    }
  }
  if (negativeElements.isEmpty) {
    print("No negative elements found in the array.");
  } else {
    print("Negative elements in the array: $negativeElements");
  }
}

void main() {
  List<int> numbers = [1, -2, 3, -4, 5, -6, 7, 8, -9];
  printNegativeElements(numbers);
}
