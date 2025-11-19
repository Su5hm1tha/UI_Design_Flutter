import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/counter_provider.dart';
import 'screens/setstate_screen.dart';
import 'screens/provider_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
      ],
      child: const Experiment5App(),
    ),
  );
}

class Experiment5App extends StatelessWidget {
  const Experiment5App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Experiment 5",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomeMenu(),
    );
  }
}

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Experiment 5 – State Management")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SetStateScreen()),
                );
              },
              child: const Text("SetState Counter"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ProviderScreen()),
                );
              },
              child: const Text("Provider Counter"),
            ),
          ],
        ),
      ),
    );
  }
}
