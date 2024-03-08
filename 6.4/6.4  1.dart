class Student {
int rollNo;
String name;
String course;

Student(this.rollNo, this.name, this.course);

factory Student.fromData(int rollNo, String name, String course) {
return Student(rollNo, name, course);
}
}

void main() {
List<Student> students = [];

List<Map<String, dynamic>> studentData = [
{"rollNo": 1, "name": "sahil", "course": "Computer Science"},
{"rollNo": 2, "name": "utsav", "course": "full stack"},
{"rollNo": 3, "name": "Jenil", "course": "graduate in multimedia"},
{"rollNo":4,"name": "kevin", "course": "android webapp"},
{"rollNo": 5, "name": "meet", "course": "ui/ux"},

];

for (var data in studentData) {
Student student = Student.fromData(data['rollNo'], data['name'], data['course']);
students.add(student);
}

// Displaying student data
for (var student in students) {
print("Roll No: ${student.rollNo}, Name: ${student.name}, Course: ${student.course}");
}
}