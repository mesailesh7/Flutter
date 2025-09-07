import 'dart:io';

void main() {
  stdout.write("Please enter your name");
  String name = stdin.readLineSync()!;

  int num1 = 30;
  int num2 = 50;

  int sum = num1 + num2;

  print(sum);
}
