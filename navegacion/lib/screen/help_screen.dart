import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ayuda'),
      ),
      backgroundColor: Colors.white,
      body: const Center(
        child: Text('Para mas informacion...'),
      ),
    );
  }
}
