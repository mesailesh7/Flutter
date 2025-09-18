import 'package:flutter/material.dart';

class profileBody extends StatelessWidget {
  const profileBody({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        // Creates a fixed size box. The width and height parameters can be null to indicate that the size of the box should not be constrained in the corresponding dimension.
        const SizedBox(height: 10),
        const CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/profile.jpg'),
        ),
        const SizedBox(height: 10),
        const Text(
          'John Doe',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const Text("Flutter Developer"),
        const SizedBox(height: 50),
        const Text("Hey I am a flutter developer"),
        const SizedBox(width: 50),
        const Text("**************Hello world *****************"),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/facebook.png', width: 40),
            const SizedBox(width: 20),
            Image.asset('assets/icons/messenger.png', width: 40),
            const SizedBox(width: 20),
            Image.asset('assets/icons/twitter-icon.png', width: 40),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
