import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

final startAlignment = Alignment.topLeft;
final endAlignment = Alignment.bottomRight;

// class GraidentContainer extends StatelessWidget {
//   const GraidentContainer({super.key, required this.colors});

//   final list<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: Center(child: StyledText("hello world")),
//     );
//   }
// }

class GraidentContainer extends StatelessWidget {
  const GraidentContainer(this.color1, this.color2, {super.key});

  GraidentContainer.purple({super.key})
    : color1 = Colors.deepPurple,
      color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: Image.asset("assets/images/dice-1.png", width: 200)),
    );
  }
}
