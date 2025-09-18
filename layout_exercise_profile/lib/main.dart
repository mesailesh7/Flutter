import 'package:flutter/material.dart';
import 'package:layout_exercise_profile/column.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

// Profile Page ************************************
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  // Widget think like you're implementing everything from top to the bottom. with spaces and text
  Widget build(BuildContext context) {
    // Implements the basic Material Design visual layout structure.
    return Scaffold(
      appBar: AppBar(title: const Text("Employee Profile Template")),
      // Imported profilebody from the different page
      body: profileBody(),
    );
  }
}
