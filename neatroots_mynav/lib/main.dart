import 'package:flutter/material.dart';
import 'package:neatroots_mynav/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomeScreen()
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        "/second": (context) => SecondScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => SecondScreen()),
            // );
            Navigator.pushNamed(context, '/second');
          },
          child: Text("Go to Second Screen"),
        ),
      ),
    );
  }
}
