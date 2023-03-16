import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';

class Silofono extends StatefulWidget {
  const Silofono({super.key});

  @override
  State<Silofono> createState() => _SilofonoState();
}

class _SilofonoState extends State<Silofono> {
  final audio1 = Audio.load('assets/sounds/assets_note1.wav');
  final audio2 = Audio.load('assets/sounds/assets_note2.wav');
  final audio3 = Audio.load('assets/sounds/assets_note3.wav');
  final audio4 = Audio.load('assets/sounds/assets_note4.wav');
  final audio5 = Audio.load('assets/sounds/assets_note5.wav');
  final audio6 = Audio.load('assets/sounds/assets_note6.wav');
  final audio7 = Audio.load('assets/sounds/assets_note7.wav');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        boton(Colors.red, audio1),
        boton(Colors.orange, audio2),
        boton(Colors.yellow, audio3),
        boton(Colors.green, audio4),
        boton(Colors.lightBlue, audio5),
        boton(Colors.blue, audio6),
        boton(Colors.purple, audio7),
      ]),
    );
  }

  Expanded boton(Color color, var audio) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          audio.play();
        },
        style: TextButton.styleFrom(
            backgroundColor: color,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0)),
            )),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
        ),
      ),
    );
  }
}
