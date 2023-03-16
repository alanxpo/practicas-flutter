import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: QuizPage(),
      backgroundColor: Color(0xFF1B1D1C),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> puntuacion = [];
  List<bool> respuestas = [true, false, true, false, true, false, true];

  List<String> preguntas = [
    '¿Los glóbulos rojos viven 4 meses?',
    '¿El cuerpo humano adulto tiene 306 huesos?',
    'La cobalamina es una vitamina',
    'El koala es un oso',
    'Los peces no pueden parpadear',
    'Las arañas son insectos',
    'La capital de Corea del Sur es Seúl'
  ];
  int numeroPregunta = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                preguntas[numeroPregunta],
                style: const TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(width: 2.0, color: Colors.green),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    Responder(true);
                  });
                },
                child: const Text('Verdadero',
                    style: TextStyle(color: Colors.white, fontSize: 40)),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(width: 2.0, color: Colors.red),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    Responder(false);
                  });
                },
                child: const Text('Falso',
                    style: TextStyle(color: Colors.white, fontSize: 40)),
              ),
            ),
          ),
        ),
        Row(children: puntuacion),
      ],
    ));
  }

  Responder(bool condicion) {
    bool respuestaCorrecta = respuestas[numeroPregunta];

    if (respuestaCorrecta == condicion) {
      puntuacion.add(const Icon(
        Icons.check,
        color: Colors.green,
        size: 40,
      ));
    } else {
      puntuacion.add(const Icon(
        Icons.close,
        color: Colors.red,
        size: 40,
      ));
    }

    if (numeroPregunta < preguntas.length - 1) {
      numeroPregunta++;
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PuntuacionPage(puntuacion)),
      );
      numeroPregunta = 0;
    }
  }
}

class PuntuacionPage extends StatelessWidget {
  final List<Icon> puntuacion;

  const PuntuacionPage(this.puntuacion, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int numRespuestasCorrectas =
        puntuacion.where((icon) => icon.icon == Icons.check).length;

    return Scaffold(
      backgroundColor: Color(0xFF1B1D1C),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Puntuación: $numRespuestasCorrectas/${puntuacion.length}',
            style: const TextStyle(fontSize: 40, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: puntuacion,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
                (route) => false,
              );
              puntuacion.clear();
            },
            child: const Text('Volver a jugar'),
          ),
        ],
      ),
    );
  }
}
