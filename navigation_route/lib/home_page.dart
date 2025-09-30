import 'package:flutter/material.dart';
import 'routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Go to second page (push)"),
              onPressed: () => Navigator.pushNamed(context, AppRoutes.second),
            ),
            ElevatedButton(
              child: const Text("Go to details Page"),
              onPressed: () async {
                final result = await Navigator.pushNamed(
                  context,
                  AppRoutes.details,
                  arguments: "Message from the Home Page",
                );
                if (result != null) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Returned : $result")));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
