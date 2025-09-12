import 'dart:io';

void main() {
  // print("This is hello world");

  // stdout.write('Enter your name: ');
  // var name = stdin.readLineSync();
  // print("Welcome, $name");

  //every time a class is used . Default constructor is called right away
  // var raman = new Human();
  // new Human();
  Human(); //Creating a class object

  int? a;
  a = 5;
  print(a);

  BigInt longValue;
  longValue = BigInt.parse('5555555555555555');
  // print(longValue.runtimeType);
  print(longValue);

  Object section;

  section = "D";
  section = 7;
  section = false;

  print(section);
}

class Human {
  // default constructor

  Human();
}
