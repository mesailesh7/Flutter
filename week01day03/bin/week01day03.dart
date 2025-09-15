import 'dart:io';


void main(List<String> arguments) {
  // print('Hello world: ${week01day03.calculate()}!');

  late int width;
  late int length;
  late int height;

  // Program title
  print("Rectangle surface area and volume ");

  do{
    print('\n --Menu of options');
    print('[a]rea of rectangle');
    print('[v]olume of rectangle');
    print('[q]uit');

    stdout.write('Enter option: ');
   
   String option = stdin.readLineSync() as String;
    
    switch(option){
        case 'a':
          width= int.parse(stdin.readLineSync()!);
          length = int.parse(stdin.readLineSync()!);
          height = int.parse(stdin.readLineSync()!);
          
          stdout.write("The surface area of reactangle with width");
         


    
    }



  }while();
  
};