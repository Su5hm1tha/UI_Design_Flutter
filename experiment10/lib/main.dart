import 'package:flutter/material.dart';

void main() {
  runApp(const Experiment10App());
}

class Experiment10App extends StatelessWidget {
  const Experiment10App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment 10',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int clicks = 0;

  void increment() {
    setState(() {
      clicks++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Experiment 10 - UI Test")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You clicked $clicks times',
              key: const Key("counterText"),
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              key: const Key("incrementBtn"),
              onPressed: increment,
              child: const Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
