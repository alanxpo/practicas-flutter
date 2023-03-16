import 'package:balance/utils/constants.dart';
import 'package:flutter/material.dart';

class BackSheet extends StatelessWidget {
  const BackSheet({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    _cabeceras(String nombre, String cantidad, Color color) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 13, bottom: 5),
            child: Text(nombre,
                style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5)),
          ),
          Text(
            cantidad,
            style: TextStyle(fontSize: 20, letterSpacing: 1.5, color: color),
          )
        ],
      );
    }

    return Container(
      height: 250,
      decoration:
          Constants.sheetBoxDecoration(Theme.of(context).primaryColorDark),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _cabeceras('Ingresos', '\$300,800.00', Colors.greenAccent),
          const VerticalDivider(
            thickness: 2,
          ),
          _cabeceras('Gastos', '\$11,250.00', Colors.redAccent)
        ],
      ),
    );
  }
}
