int findSecondLargest(List<int> arr) {
  if (arr.length < 2) {
    throw Exception("Array should contain at least two elements");
  }

  int firstLargest = arr[0];
  int secondLargest = arr[0];

  for (int i = 1; i < arr.length; i++) {
    if (arr[i] > firstLargest) {
      secondLargest = firstLargest;
      firstLargest = arr[i];
    } else if (arr[i] > secondLargest && arr[i] != firstLargest) {
      secondLargest = arr[i];
    }
  }

  if (secondLargest == firstLargest) {
    throw Exception("All elements are same");
  }

  return secondLargest;
}

void main() {
  List<int> arr = [5, 8, 2, 10, 7, 3];
  int secondLargest = findSecondLargest(arr);
  print("The second largest element in the array is: $secondLargest");
}