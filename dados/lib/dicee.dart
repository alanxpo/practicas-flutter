import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int _dado1 = 1;
  int _dado2 = 1;

  void _girarDados() {
    setState(() {
      _dado1 = Random().nextInt(6) + 1;
      _dado2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              print('clickkkk');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/dado$_dado1.png'),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              print('clickk');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/dado$_dado2.png'),
            ),
          ),
        ),
      ],
    );
  }
}
