import 'package:flutter/material.dart';

class SetStateScreen extends StatefulWidget {
  const SetStateScreen({super.key});

  @override
  State<SetStateScreen> createState() => _SetStateScreenState();
}

class _SetStateScreenState extends State<SetStateScreen> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SetState Counter")),
      body: Center(
        child: Text(
          "Count: $count",
          style: const TextStyle(fontSize: 28),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
