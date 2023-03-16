import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cronometer extends StatefulWidget {
  const Cronometer({Key? key});

  @override
  State<Cronometer> createState() => _CronometerState();
}

class _CronometerState extends State<Cronometer> {
  int milisegundos = 0;
  int tiempoAnterior = 0;
  bool estaCorriendo = false;
  late Timer timer;
  List<Widget> vueltas = [];

  void iniciarCronometro() {
    if (!estaCorriendo) {
      timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
        this.milisegundos += 10;
        setState(() {});
      });
      estaCorriendo = true;
    }
  }

  void detenerCronometro() {
    timer.cancel();
    estaCorriendo = false;
  }

  void agregarVuelta() {
    int tiempoActual = milisegundos;
    int contador = vueltas.length;

    int diferencia = milisegundos - tiempoAnterior;

    vueltas.add(
      ListTile(
        leading: Text(
          '$contador',
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
        title: Text(
          formaterTiempo(tiempoActual),
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        trailing: Text(
          formaterTiempo(diferencia),
          style:
              TextStyle(color: Color.fromARGB(255, 82, 82, 82), fontSize: 20),
        ),
      ),
    );
    tiempoAnterior = milisegundos;
  }

  void reiniciarCronometro() {
    timer.cancel();
    tiempoAnterior = 0;
    milisegundos = 0;
    vueltas.clear();
    estaCorriendo = false;
    setState(() {});
  }

  String formaterTiempo(int tiempo) {
    Duration duracion = Duration(milliseconds: tiempo);

    String dosValores(int valor) {
      return valor >= 10 ? "$valor" : "0$valor";
    }

    String horas = dosValores(duracion.inHours);
    String minutos = dosValores(duracion.inMinutes.remainder(60));
    String segundos = dosValores(duracion.inSeconds.remainder(60));
    String milisegundos =
        dosValores(duracion.inMilliseconds.remainder(1000)).substring(0, 2);
    return "$horas:$minutos:$segundos:$milisegundos";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            formaterTiempo(milisegundos),
            style: TextStyle(fontSize: 40, color: Colors.black),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                child: Icon(Icons.play_arrow, size: 40, color: Colors.red),
                onPressed: iniciarCronometro,
              ),
              CupertinoButton(
                child: Icon(Icons.pause, size: 40, color: Colors.green),
                onPressed: detenerCronometro,
              ),
              CupertinoButton(
                child: Icon(Icons.flag, size: 40, color: Colors.green),
                onPressed: agregarVuelta,
              ),
              CupertinoButton(
                child: Icon(Icons.stop, size: 40, color: Colors.red),
                onPressed: reiniciarCronometro,
              ),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 400,
            width: 370,
            child: ListView.builder(
                itemCount: vueltas.length,
                itemBuilder: (context, index) {
                  return vueltas[index];
                }),
          )
        ],
      ),
    );
  }
}
