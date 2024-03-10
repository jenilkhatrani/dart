import 'dart:io';

class Employee {
  int id;
  String name;
  int age;
  double salary;

  Employee(this.id, this.name, this.age, this.salary);

  String toString() {
    return 'ID: $id, Name: $name, Age: $age, Salary: \$${salary.toStringAsFixed(2)}';
  }
}

void main() {
  List<Employee> employees = [];

  for (int i = 1; i <= 3; i++) {
    print('Enter details for Employee $i:');
    int id = int.parse(input('ID: '));
    String name = input('Name: ');
    int age = int.parse(input('Age: '));
    double salary = double.parse(input('Salary: '));

    employees.add(Employee(id, name, age, salary));
  }

  print('\nTotal Employees Information:');
  for (var employee in employees) {
    print(employee);
  }
}

String input(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync()!;
}