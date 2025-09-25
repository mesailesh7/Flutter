// import 'package:flutter/material.dart';
// import 'dart:math';

// void main() {
//   // runApp(const MyApp());
//   runApp(const MaterialApp(home: GesturePlayground()));
// }

// class GesturePlayground extends StatefulWidget {
//   const GesturePlayground({super.key});

//   @override
//   State<GesturePlayground> createState() => _GesturePlayGroundState();
// }

// class _GesturePlayGroundState extends State<GesturePlayground> {
//   double x = 100, y = 100;
//   List<String> color = ["green", "blue", "red"];

//   Color backgroundColor = Colors.white;

//   Random random = Random();
//   int randomNumber = random.nextInt(4);

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(title: const Text("Colored Box")),
//       body: Stack(
//         children: [
//           Positioned(
//             left: x,
//             top: y,
//             child: GestureDetector(
//               onPanUpdate: (details) {
//                 setState(() {
//                   color = Colors.$color[randomNumber];
//                 });
//               },

//               child: Container(
//                 width: 150.0,
//                 height: 150.0,
//                 color: Colors.blue, // Sets the background color
//                 child: const Center(
//                   child: Text(
//                     'Hello',
//                     style: TextStyle(color: Colors.white, fontSize: 24.0),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

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
  double x = 100, y = 100; // x y axis position
  double size = 150; // size
  double angle = 0; // rotation angle

  Color backgroundColor = Colors.white;
  Color fontColor = Colors.black;

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
              onTap: () {
                setState(() {
                  if (backgroundColor == Colors.white) {
                    backgroundColor = Colors.black;
                    fontColor = Colors.white;
                  } else {
                    backgroundColor = Colors.white;
                    fontColor = Colors.black;
                  }
                });
              },
              onDoubleTap: () {
                setState(() => size = size == 150 ? 220 : 150);
              },
              onLongPress: () {
                setState(() => angle += 0.5); //rotate .5rad
              },
              child: Transform.rotate(
                angle: angle,
                child: Card(
                  color: backgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "John Doe",
                          style: Theme.of(
                            context,
                          ).textTheme.titleLarge!.copyWith(color: fontColor),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Software Engineer",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium!.copyWith(color: fontColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
