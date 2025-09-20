import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receipe Book',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey[100],
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.black87),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        cardTheme: const CardThemeData(
          elevation: 4,
          margin: EdgeInsets.all(12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber,
          brightness: Brightness.dark,
        ),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black87),
      ),
      themeMode: ThemeMode.light,
      home: const ReceipePage(),
    );
  }
}

class ReceipePage extends StatelessWidget {
  const ReceipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pizza Something")),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/pizza.jpg',
              height: 500,
              width: 1200,
              scale: 2.5,
            ),
            const SizedBox(height: 10),

            Text("Ingridients", textAlign: TextAlign.right),
            Wrap(
              children: [
                const SizedBox(height: 20),
                Text('''
Extra virgin olive oil
Cornmeal (to help slide the pizza onto the pizza stone)
Tomato sauce (smooth or pureed)
Firm mozzarella cheese, grated
Fresh soft mozzarella cheese, separated into small clumps
Fontina cheese, grated
Parmesan cheese, grated
Feta cheese, crumbled
Mushrooms, very thinly sliced if raw, otherwise first sautéed
Bell peppers, stems and seeds removed, very thinly sliced
'''),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
