import 'package:cv/common/app_bar.dart';
import 'package:flutter/material.dart';

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: const Text(
          "Je m'apelle Corentin Bourdeau, je suis originaire de la région nantaise"),
    );
  }
}

class LinkProject extends StatelessWidget {
  final String name;
  const LinkProject({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(name);
  }
}

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: const Column(
        children: [
          Text("Mes projects"),
          LinkProject(
            name: "Hangman",
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: MyAppBar(),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
            // opacity: 0.2,
          ),
        ),
        // color: Colors.white,
        child: SingleChildScrollView(
          child: Center(
            // Wrap with Center widget
            child: ConstrainedBox(
              // Wrap with ConstrainedBox widget
              constraints: const BoxConstraints(
                  maxWidth: 900), // Set your desired max width
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Presentation(),
                  Projects(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
