import 'package:cv/lenia/lenia_view.dart';
import 'package:cv/life/life_view.dart';
import 'package:flutter/material.dart';
import 'package:cv/home/home_view.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Corentin Bourdeau',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const  HomePage(),
        '/lifegame': (context) => const LifeGame(),
        '/leniagame': (context) => const LeniaGame(),
      },
    );
  }
}
