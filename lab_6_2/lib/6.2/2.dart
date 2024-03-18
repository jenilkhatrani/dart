import 'dart:io';

class Employee {
  String name;
  double salary;
  String designation;

  Employee(this.name, this.salary, this.designation);
}

void main() {
  // Get the number of employees
  print('Enter the number of employees: ');
  int numEmployees = int.parse(stdin.readLineSync()!);

  // Create an empty list to store employee objects
  List<Employee> employees = [];

  // Get details of each employee and store them in the list
  for (var i = 0; i < numEmployees; i++) {
    print('\nEnter details for employee ${i + 1}:');
    print('Enter name: ');
    String name = stdin.readLineSync()!;
    print('Enter salary: ');
    double salary = double.parse(stdin.readLineSync()!);
    print('Enter designation: ');
    String designation = stdin.readLineSync()!;

    employees.add(Employee(name, salary, designation));
  }

  // Sort employees by name in ascending order
  employees.sort((a, b) => a.name.compareTo(b.name));

  // Print details of all employees in ascending order of names
  print('\nDetails of all employees sorted by name:');
  for (var employee in employees) {
    print('Name: ${employee.name}, Salary: ${employee.salary}, Designation: ${employee.designation}');
  }
}
