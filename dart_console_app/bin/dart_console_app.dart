import 'dart:io';


void main(List<String> arguments) {
  // print('Hello world: ${dart_console_app.calculate()}!');

  //Display a message
  print('Enter your name: ');

  //capture the input
  String? name = stdin.readLineSync();
  //display output
  print("Hello $name welcome to the dart console app");
}
