import 'package:cv/lenia/lenia_view.dart';
import 'package:cv/life/life_view.dart';
import 'package:cv/converter/converter_view.dart';
import 'package:cv/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/lifegame',
          builder: (context, state) => const LifeGame(),
        ),
        GoRoute(
          path: '/leniagame',
          builder: (context, state) => const LeniaGame(),
        ),
        GoRoute(
          path: '/converter',
          builder: (context, state) => const Converter(),
        ),
      ],
      errorPageBuilder: (context, state) => const MaterialPage(
        child: HomePage(),
      ),
    );

    return MaterialApp.router(
      routerConfig: router,
      title: 'Corentin Bourdeau',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Lato',
        useMaterial3: true,
      ),
    );
  }
}
