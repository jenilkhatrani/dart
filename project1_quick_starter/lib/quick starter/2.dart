int LargestNumber(List<int> array) {
  if (array.isEmpty) {
    throw ArgumentError(" empty ");
  }

  int largest = array[0];
  for (int i = 1; i < array.length; i++) {
    if (array[i] > largest) {
      largest = array[i];
    }
  }
  return largest;
}

void main() {
  List<int> numbers = [20 , 50 ,90 ,60 , 40];
  int largestNumber = LargestNumber(numbers);
  print("The largest number in the array is : $largestNumber");
}
