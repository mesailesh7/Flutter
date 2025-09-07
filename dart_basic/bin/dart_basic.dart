import 'package:dart_basic/dart_basic.dart' as dart_basic;

void main(List<String> arguments) {
  print('Hello world: ${dart_basic.calculate()}!');

  for (int i = 0; i < 3; i++) {
    print('hello ${i + 1}');
  }

  print('''
    Hello world how are you
    Hello world
''');

  String test = "hello test";

  if (test == "hello tests") {
    print("hello ${test}s");
  } else if (test == "hello test") {
    print(test);
  } else {
    print("Nothing found in $test");
  }

  int number = 0;

  while (number < 5) {
    print(number);
    number++;
  }

  do {
    print("COunter is going to be started");
    print(number);
    number++;
  } while (number < 10);
}
