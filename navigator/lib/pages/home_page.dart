import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator/pages/segundapagina.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Inicio',
                style: TextStyle(fontSize: 25),
              ),
              CupertinoButton(
                child: const Text('Ir a segunda pagina'),
                onPressed: () {
                  Route route = MaterialPageRoute(
                      builder: (__) => const SegundaPagina(
                            nombre: 'Alan Alfredo',
                          ));
                  Navigator.push(context, route);
                  print('continua el codigo');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
