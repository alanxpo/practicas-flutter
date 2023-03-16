import 'package:balance/provider/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UIProvider>(context);

    return BottomNavigationBar(
        currentIndex: uiProvider.bnbIndex,
        onTap: (int i) => uiProvider.bnbIndex = i,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(label: 'Balance', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Graficos', icon: Icon(Icons.auto_graph_outlined)),
          BottomNavigationBarItem(
              label: 'Configuracion', icon: Icon(Icons.settings))
        ]);
  }
}
