import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? imageurl;
  String? name;
  String? email;
  bool isLoading = false;

  Future<void> fetchData() async {
    setState(() => isLoading = true);
    var random = Random();
    int max = 20;
    int randomNumber = random.nextInt(max);

    final url = Uri.parse("https://dummyjson.com/users/$randomNumber");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        imageurl = data["image"];
        name = "${data["firstName"]} ${data["lastName"]}";
        email = data["email"];
        isLoading = false;
      });
    } else {
      setState(() => isLoading = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Failed: ${response.statusCode}")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stateful Widget Example")),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : imageurl == null
            ? const Text("Press button to fetch user data")
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(imageurl!, width: 120),
                  const SizedBox(height: 10),
                  Text("Name: $name"),
                  Text("Email: $email"),
                ],
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchData,
        child: const Icon(Icons.cloud_download),
      ),
    );
  }
}
