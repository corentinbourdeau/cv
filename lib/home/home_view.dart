import 'package:cv/common/app_bar.dart';
import 'package:cv/lenia/lenia_view.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:cv/life/life_view.dart';

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        color: Color.fromARGB(96, 255, 255, 255),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              "Profil professionnelle",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 0.05 * MediaQuery.of(context).size.height,
                foregroundImage: const AssetImage('assets/images/profil.jpg'),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Text(
                  "Étudiant en cinquième année à l'École EPITECH depuis septembre 2019. "
                  "Je suis spécialisé dans différents langages de programmation : React Native, Flutter et Vue.js. "
                  "Je suis à l'aise à découvrir et apprendre de nouveaux langages.",
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Experiencies extends StatelessWidget {
  const Experiencies({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        color: Color.fromARGB(96, 255, 255, 255),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "EXPÉRIENCE PROFESSIONNELLE",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text("Stagiaire fullstack Web"),
          Text("Talentsquare | Septembre 2023 - Août 2024"),
          Text("Développement d’"
              "un logiciel de recrutement en Belgique. Mes tâches consistent à"
              "implémenter et améliorer les différentes fonctionnalités. L’"
              "application web est"
              "programmée en Python et AngularJS, ainsi que l’"
              "application mobile en flutter"),
          Text("Développeur fullstack - Projet de fin d'étude"),
          Text("Outside EIP | Septembre 2021 - Décembre 2023"),
          Text(
              "Mon projet de fin d'étude s'appelle Outside. L'objectif de notre projet est de renouer"
              "l'envie de découvrir la faune et la flore qui nous entoure. Notre application est"
              "développée en Java, React Natif ainsi que Vue js"),
          Text("Stagiaire Full Stack Web"),
          Text("SIGMA | Mars - Septembre 2022"),
          Text(
              "Développement d'un logiciel interne pour remplacer trois applications existantes par"
              "une seule, plus moderne et pratique. Utilisation de Symfony (PHP), React (front-end)"
              "et SQL (base de données). Affichage sur des télévisions connectées à des Raspberry"
              "Pi, contrôlé via un dashboard."),
          Text("Stagiaire Full Stack"),
          Text("ICI | Septembre - Décembre 2020"),
          Text(
              "Réalisation d'un site internet sur des Raspberry Pi pour les étudiants de l'école de"
              "Centrale de Nantes afin de découvrir le monde des calculs intensifs. (React JS)"),
        ],
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        color: Color.fromARGB(96, 255, 255, 255),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Comment me contacter",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Text("E-mail : corentinbourdeau2001@gmail.com"),
          Text("Téléphone : +33 6 18 36 16 96"),
          Text("Adresse : La Chapelle Sur Erdre"),
        ],
      ),
    );
  }
}

class Formation extends StatelessWidget {
  const Formation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        color: Color.fromARGB(96, 255, 255, 255),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "FORMATIONS",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text("EPITECH - NEW YORK (USA) / PARIS (FRANCE)"),
          Text(
              "Expert en Technologies de l’Information | septembre 2022 - Juin 2024"),
          Text(
              "• Notre cursus nous propose de partir à l'étranger en 4ème année. J'ai"
              "choisi l'école New School Center For Media pour découvrir le monde de"
              "la finance ainsi que l'économie américaine."),
          Text("• Nous avons notamment réaliser des algorithmes de trading."),
          Text("EPITECH - NANTES (FRANCE) / BARCELONE (ESPAGNE)"),
          Text("Bachelor | septembre 2019 - juin 2022"),
          Text("• Programmation en C, C++"
              ", Python, Javascript, Java, PHP, Dart, Devops"
              "(Docker, kubernetes, jenkins), Flutter"),
          Text("Saint Joseph du Loquidy - NANTES"),
          Text("Collège et lycée"),
          Text("• Bac S spécialité SVT option ISN (2019)"),
          Text("• Brevet Mention assez bien (2014)"),
        ],
      ),
    );
  }
}

class Project extends StatelessWidget {
  final String language;
  final String name;
  final String link;
  final String status;
  final String description;

  const Project({
    super.key,
    required this.language,
    required this.link,
    required this.name,
    required this.status,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.2),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 1,
            right: 1,
            child: Text(
              status,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('$name :'),
                  InkWell(
                    child: const Text(
                      "Voir",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    onTap: () => (
                      link == "lifeGame"
                          ? Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const LifeGame(),
                              ),
                            )
                          : link == "leniaGame"
                              ? Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const LeniaGame(),
                                  ),
                                )
                              : launchUrlString(link),
                    ),
                  )
                ],
              ),
              Text('Language utilisé : $language'),
              Text(description),
            ],
          ),
        ],
      ),
    );
  }
}

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        color: Color.fromARGB(96, 255, 255, 255),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Mes projets",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Project(
            language: "React App",
            link: "https://hangman-cb.vercel.app/",
            name: "Hangman",
            status: "Fini",
            description: "Jeu du pendu",
          ),
          Project(
            language: "Flutter",
            link: "https://www.gildasbourdeau.fr/",
            name: "2AMS",
            status: "Fini",
            description: "Site internet pour une entreprise de rénovation",
          ),
          Project(
            language: "Flutter",
            link: "lifeGame",
            name: "Jeu de la vie",
            status: "Fini",
            description:
                "Jeu de simulation mathématique. Des règles très simple mais qui font de lui un système formel",
          ),
          Project(
            language: "Flutter",
            link: "leniaGame",
            name: "Jeu de lenia",
            status: "Fini",
            description:
                "Jeu de simulation mathématique. Des règles très simple mais qui font de lui un système formel",
          ),
          Project(
            language: "React",
            link: "",
            name: "CoUp",
            status: "En cours",
            description: "Dashboard & App : Boîte à idée",
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
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue,
              Colors.red,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 900,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Presentation(),
                  Experiencies(),
                  Formation(),
                  Projects(),
                  Contact(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
