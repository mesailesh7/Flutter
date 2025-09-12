void main() {
  var myC = myClass();
  myC.printName("Sunny");
  myC.printName("Sangam");
  myC.printName("Mahima");

  print(myC.sum(1, 2));
}

class myClass {
  void printName(String name) {
    //declaration
    print("Hello world from function $name"); // defination
  }

  int sum(int a, int b) {
    int sum = a + b;
    return sum;
  }
}
