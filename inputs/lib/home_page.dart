import 'package:flutter/material.dart';
import 'package:inputs/inputs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: Column(
        children: const [
          Inputs(),
          Inputs(
            label: 'Nombre',
            helper: 'name',
            icono: Icons.ac_unit_rounded,
            longitud: 50,
            teclado: TextInputType.name,
          ),
          Inputs(
              label: 'Telefono',
              helper: 'phone',
              icono: Icons.ac_unit_rounded,
              longitud: 11,
              teclado: TextInputType.phone),
        ],
      ),
    );
  }
}
