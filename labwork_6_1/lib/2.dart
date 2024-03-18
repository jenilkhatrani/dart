List<String> uniqueNames(List<String> names) => names.toSet().toList();

void main() {

  List<String> names = ['John', 'Alice', 'John', 'Bob', 'Alice'];
  List<String> unique = uniqueNames(names);
  print('Original List: $names');
  print('Unique List: $unique');
}