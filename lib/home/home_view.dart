import 'package:cv/common/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:cv/styles/texts.dart';
import 'package:go_router/go_router.dart';
import 'package:cv/common/experience.dart';
import 'package:cv/home/formation_view.dart';

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
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
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 0.05 * MediaQuery.of(context).size.height,
                backgroundColor: Colors.transparent,
                child: Transform.scale(
                  scale: 2, // Ajustez le facteur de zoom ici
                  child: ClipOval(
                    child: SizedBox(
                      width: 0.025 * MediaQuery.of(context).size.height * 2,
                      height: 0.025 * MediaQuery.of(context).size.height * 2,
                      child: Image.asset(
                        'assets/images/profil.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              const Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "    Diplômé de l'École EPITECH en tant qu'expert en Technologies de l'Information, je suis passionné par le développement front-end.\n\n"
                      "    J'ai une solide expérience avec les technologies React, React Native, Dart et Python, et je suis toujours enthousiaste à l'idée de "
                      "découvrir et maîtriser de nouveaux langages de programmation. Mon parcours à EPITECH, où j'ai acquis une formation rigoureuse et "
                      "polyvalente, m'a permis de développer des compétences techniques approfondies tout en favorisant mon adaptabilité et ma capacité d'apprentissage.\n\n"
                      "    Aujourd'hui, je suis à la recherche d'une opportunité professionnelle qui me permettra de mettre en pratique mes compétences et de continuer à grandir en tant que développeur.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Lato',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          )
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
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Experience(
            title: "Stagiaire fullstack Web et Mobile",
            date: "Talentsquare | Septembre 2023 - Août 2024",
            text:
                "• Partime et Stage chez Talentsquare : AngularJs/Python/Flutter. "
                "Développement d'un logiciel de recrutement en Belgique.\n\n"
                "• Mes tâches consistent à implémenter et améliorer les différentes fonctionnalités. L’application web est "
                "programmée en Python et AngularJS, ainsi que l’ application mobile en flutter. La base de donnée est en PostgreSQL.",
          ),
          Experience(
            title: "Développeur fullstack - Projet de fin d'étude",
            date: "Outside EIP | Septembre 2021 - Décembre 2023",
            text:
                "• Mon projet de fin d'étude s'appelle Outside. L'objectif de notre projet est de renouer "
                "l'envie de découvrir la faune et la flore qui nous entoure. Notre application est "
                "développée en Java, React Native ainsi qu'un dashboard en Vue js",
          ),
          Experience(
              title: "Stagiaire fullstack Web",
              date: "Sigma | Mars - Septembre 2022",
              text:
                  "• Développement d'un logiciel interne pour remplacer trois applications existantes par "
                  "une seule, plus moderne et pratique. Utilisation de PHP (Symphony), React (front end) "
                  "et SQL (base de données). Affichage sur des télévisions connectées à des Raspberry"
                  "Pi, contrôlé via un dashboard."),
          Experience(
              title: "Stagiaire Full Stack",
              date:
                  "ICI (Institut de Calcul Intensif) | Septembre - Décembre 2020",
              text:
                  "• Réalisation d'un site internet sur des Raspberry Pi pour les étudiants de l'école de "
                  "Centrale de Nantes afin qu'ils découvrent le monde des calculs intensifs. (Javascript : React)"),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              "Comment me contacter",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lato',
              ),
            ),
          ),
          const Text(
            "E-mail : corentinbourdeau2001@gmail.com",
            style: TextStyle(
              fontFamily: 'Lato',
            ),
          ),
          const Text(
            "Téléphone : +33 6 18 36 16 96",
            style: TextStyle(
              fontFamily: 'Lato',
            ),
          ),
          InkWell(
            onTap: () => launchUrlString("https://github.com/corentinbourdeau"),
            child: const Text(
              "GitHub : corentinbourdeau",
              style: TextStyle(
                fontFamily: 'Lato',
              ),
            ),
          ),
          InkWell(
            onTap: () => launchUrlString(
                "https://www.linkedin.com/in/corentin-bourdeau-a50a31196/"),
            child: const Text(
              "LinkedIn : Corentin BOURDEAU",
              style: TextStyle(
                fontFamily: 'Lato',
              ),
            ),
          )
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
  final String image;

  const Project({
    super.key,
    required this.language,
    required this.link,
    required this.name,
    required this.status,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => (link == "lifeGame"
          ? context.go('/lifegame')
          : link == "leniaGame"
              ? context.go('/leniaGame')
              : link == "converter"
                  ? context.go('/converter')
                  : launchUrlString(link)),
      child: Tooltip(
        message: 'Clique pour voir le projet',
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          padding: const EdgeInsets.all(2),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.2),
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
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
              Row(
                children: [
                  Image(
                    width: 0.15 * MediaQuery.of(context).size.height,
                    image: AssetImage(
                      image,
                    ),
                  ),
                  Expanded(
                    child: Experience(
                        title: name,
                        text: description,
                        date: 'Language utilisé : $language'),
                  )
                ],
              )
            ],
          ),
        ),
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
                fontFamily: 'Lato',
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
            image: "assets/images/hangman.png",
          ),
          Project(
            language: "Flutter",
            link: "https://www.gildasbourdeau.fr/",
            name: "2AMS",
            status: "Fini",
            description: "Site internet pour une entreprise de rénovation",
            image: "assets/images/2ams.png",
          ),
          Project(
            language: "Flutter",
            link: "lifeGame",
            name: "Jeu de la vie",
            status: "Fini",
            description:
                "Jeu de simulation mathématique. Des règles très simple mais qui font de lui un système formel",
            image: "assets/images/vie.png",
          ),
          Project(
            language: "Flutter",
            link: "leniaGame",
            name: "Jeu de lenia",
            status: "Fini",
            description:
                "Jeu de simulation mathématique. Des règles très simple mais qui font de lui un système formel",
            image: "assets/images/lenia.png",
          ),
          Project(
            language: "Flutter",
            link: "converter",
            name: "Converter",
            status: "Fini",
            description: "Converter of km/h by m/s ...",
            image: "assets/images/converter.png",
          ),
          Project(
            language: "React",
            link: "https://coupweb.vercel.app/",
            name: "CoUp",
            status: "En cours",
            description: "Dashboard & App : Boîte à idée",
            image: "assets/images/coup.png",
          ),
        ],
      ),
    );
  }
}

class Passions extends StatelessWidget {
  const Passions({super.key});

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
              "Mes langues",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "Français (Natif)\n"
            "Anglais (C1-TOEIC:750)\n"
            "Espagnol (A2)",
            style: experienceTextStyle,
          )
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
              Color.fromARGB(255, 165, 255, 197),
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
                  Passions(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
