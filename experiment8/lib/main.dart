import 'package:flutter/material.dart';
import 'screens/animation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Experiment 8: Animations',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const AnimationScreen(),
    );
  }
}
