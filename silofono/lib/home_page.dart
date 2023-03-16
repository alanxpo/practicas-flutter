import 'package:flutter/material.dart';
import 'package:silofono/silofono.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Silofono(),
    );
  }
}
