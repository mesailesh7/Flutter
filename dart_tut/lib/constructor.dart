void main() {
  List<Student> name = [
    Student('Sunny', 15),
    Student("Dhana", 50),
    Student("Sunita", 40),
    Student("Suraj", 30),
  ];

  for (var element in name) {
    print("${element.name}, ${element.age}");
  }
}

class Student {
  String? name;
  int? age;

  Student(String name, int age) {
    print("called");
    this.name = name;
    this.age = age;
  }

  void displayInfo() {
    print('------------------------');
    print('Name: $name');
    print('Age: $age');
    print('-------------------');
  }
}
