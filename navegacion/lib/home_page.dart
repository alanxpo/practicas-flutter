import 'package:flutter/material.dart';
import 'package:navegacion/screen/help_screen.dart';
import 'package:navegacion/screen/login_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text('Ir al login'),
            subtitle: Text('En esta pantalla te logeas'),
            trailing: Icon(Icons.arrow_forward),
            leading: CircleAvatar(
              child: Text('LG'),
            ),
            onTap: () {
              final ruta = MaterialPageRoute(
                builder: (_) => const LoginScreen(),
              );
              Navigator.push(context, ruta);
            },
          ),
          ListTile(
            title: Text('Ayuda'),
            subtitle: Text('Pagina de ayuda'),
            trailing: Icon(Icons.arrow_forward),
            leading: CircleAvatar(
              child: Text('😎'),
            ),
            onTap: () {
              final ruta = MaterialPageRoute(
                builder: (_) => const HelpScreen(),
              );
              Navigator.push(context, ruta);
            },
          )
        ],
      ),
    );
  }
}
