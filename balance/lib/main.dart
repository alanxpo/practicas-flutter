import 'package:balance/provider/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UIProvider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Balance',
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey[900],
          ),
          bottomNavigationBarTheme:
              BottomNavigationBarThemeData(selectedItemColor: Colors.blue),
          scaffoldBackgroundColor: Colors.grey[900],
          primaryColorDark: Colors.grey[850]),
      initialRoute: 'home',
      routes: {'home': (_) => const HomePage()},
    );
  }
}
