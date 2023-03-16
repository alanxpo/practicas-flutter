import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var _dado1 = 1;
  var _dado2 = 1;

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
        dado(Random().nextInt(6) + 1),
        dado(Random().nextInt(6) + 1),
      ],
    );
  }

  Expanded dado(valorDado) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          setState(() {});
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/dado$valorDado.png'),
        ),
      ),
    );
  }
}
