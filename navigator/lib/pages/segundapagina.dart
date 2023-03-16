import 'package:flutter/material.dart';

class SegundaPagina extends StatelessWidget {
  final String nombre;

  const SegundaPagina({super.key, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            print(Navigator.canPop(context));
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text('Segunda'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$nombre',
                style:  const TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
