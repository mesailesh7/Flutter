import 'package:flutter/material.dart';

class Receipebookbody extends StatelessWidget {
  const Receipebookbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Receipe for Pie",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
