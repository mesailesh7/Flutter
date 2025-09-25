import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  runApp(const MaterialApp(home: GesturePlayground()));
}

class GesturePlayGround extends StatefulWidget {
  const GesturePlayGround({super.key});

  @override
  State<GesturePlayGround> createState() =>_GesturePlaygroundState();
}

class _GesturePlayGroundState extends State<GesturePlayGround> {
  double x = 100, y = 100; // Position
  double size = 150; //Image size
  double angle = 0; // Rotation angle

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(title: const Text("Gesture Playground")), body: Stack(
      children: [
        Positioned(child: 
        left: x, 
        top: y,
        child: GestureDetector(
          onPaneUpdate: (details) {
            setState(() {
              x + = details.delta.dx;
              y + = details.delta.dy;
            });
          },onDoubleTap: () {
            setState(() => size = size == 150? 220 : 150);
          },
          onLongPress: () {
            setState(() => angle += 0.5) // roate .5 rad
          },

          Child: Transform.rotate(
            angle: angle,
            child: Image.network("https://picsum.photos/200", width: size, height: size,)
          );
        ),
        ),
      ],
    ),);
  }
}
