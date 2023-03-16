import 'package:flutter/material.dart';

class Inputs extends StatefulWidget {
  final String? label;
  final String? helper;
  final IconData? icono;
  final Color? iconColor;
  final int? longitud;
  final TextInputType? teclado;

  const Inputs(
      {this.label,
      this.helper,
      this.icono,
      this.iconColor,
      this.longitud,
      this.teclado,
      super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          cursorColor: Colors.red[500],
          keyboardType: widget.teclado,
          maxLength: widget.longitud,
          textCapitalization: TextCapitalization.words,
          decoration: InputDecoration(
              border: const OutlineInputBorder(borderSide: BorderSide()),
              labelText: widget.label,
              helperText: widget.helper,
              icon: Icon(
                widget.icono,
                size: 40,
                color: widget.iconColor,
              )),
        ));
  }
}
