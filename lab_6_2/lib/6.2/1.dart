import 'dart:io';

class Student {
  String name;
  String rollNo;
  int age;

  Student(this.name, this.rollNo, this.age);

  void getDetails() {
    print('Name: $name, Roll No: $rollNo, Age: $age');
  }
}

void main() {
  // Get the number of students
  print('Enter the number of students: ');
  int numStudents = int.parse(stdin.readLineSync()!);

  // Create an empty list to store student objects
  List<Student> students = [];

  // Get details of each student and store them in the list
  for (var i = 0; i < numStudents; i++) {
    print('\nEnter details for student ${i + 1}:');
    print('Enter name: ');
    String name = stdin.readLineSync()!;
    print('Enter roll number: ');
    String rollNo = stdin.readLineSync()!;
    print('Enter age: ');
    int age = int.parse(stdin.readLineSync()!);

    students.add(Student(name, rollNo, age));
  }

  // Print details of all students
  print('\nDetails of all students:');
  for (var student in students) {
    student.getDetails();
  }
}
