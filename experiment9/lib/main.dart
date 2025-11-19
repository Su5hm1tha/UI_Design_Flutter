import 'package:flutter/material.dart';
import 'screens/posts_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Experiment 9: API Data',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const PostsScreen(),
    );
  }
}
