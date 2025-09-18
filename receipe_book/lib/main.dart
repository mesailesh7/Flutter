import 'package:flutter/material.dart';
import 'package:receipe_book/receipeBookBody.dart';

void main() {
  // runApp(const MyApp());
  runApp(const ReceipeApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReceipePage(),
    );
  }
}

class ReceipePage extends StatelessWidget {
  const ReceipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Receipe Book")),
      body: Receipebookbody(),
    );
  }
}

//** From Teacher */
class ReceipeApp extends StatelessWidget {
  const ReceipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
    );
  }
}
