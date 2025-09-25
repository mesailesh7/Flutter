import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: GesturePlayground()));
}

class GesturePlayground extends StatefulWidget {
  const GesturePlayground({super.key});
  @override
  State<GesturePlayground> createState() => _GesturePlaygroundState();
}

class _GesturePlaygroundState extends State<GesturePlayground> {
  double x = 100, y = 100; //position
  double size = 150; //Image size
  double angle = 0; //rotation angle

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Gesture Playground")),
      body: Stack(
        children: [
          Positioned(
            left: x,
            top: y,
            child: GestureDetector(
              onPanUpdate: (details) {
                setState(() {
                  x += details.delta.dx;
                  y += details.delta.dy;
                });
              },
              onDoubleTap: () {
                setState(() => size = size == 150 ? 220 : 150);
              },
              onLongPress: () {
                setState(() => angle += 0.5); //rotate .5 rad
              },

              child: Transform.rotate(
                angle: angle,
                child: Image.network(
                  "https://picsum.photos/200",
                  width: size,
                  height: size,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
