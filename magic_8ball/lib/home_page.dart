import 'package:flutter/material.dart';
import 'package:magic_8ball/ball8.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Ball8(),
    );
  }
}
