int sumOfList({required List<int> numbers}) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}

void main() {
  List<int> myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int result = sumOfList(numbers: myList);
  print('Sum of elements in the list: $result');
}