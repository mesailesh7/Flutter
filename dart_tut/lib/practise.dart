import 'dart:io';

void main() {
  // print("This is hello world");
  stdout.write('Enter your name: ');
  var name = stdin.readLineSync();
  print("Welcome, $name");

  //every time a class is used . Default constructor is called right away
  var raman = new Human();
}

class Human {
  // default constructor
  Human();
}
