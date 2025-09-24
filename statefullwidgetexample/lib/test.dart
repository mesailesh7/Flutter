import 'package:flutter/material.dart';

void main() {
  runApp(Text("Hello world"));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Text("Home page"),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    // TODO: implement createState
    _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  String? imageUrl;
  String? userName;
  String? gender;
}
