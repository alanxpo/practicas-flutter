import 'package:dados/dice.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 72, 72, 72),
      appBar: AppBar(
        title: const Text('Dice'),
      ),
      body: const Dice(),
    );
  }
}
