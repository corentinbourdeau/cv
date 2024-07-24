import 'package:cv/common/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:cv/styles/texts.dart';

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
                backgroundColor: Colors.transparent,
                child: Transform.scale(
                  scale: 2, // Ajustez le facteur de zoom ici
                  child: ClipOval(
                    child: SizedBox(
                      width: 0.025 * MediaQuery.of(context).size.height * 2,
                      height: 0.035 * MediaQuery.of(context).size.height * 2,
                      child: Image.asset(
                        'assets/images/profil.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
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
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}

class Experience extends StatelessWidget {
  final String title;
  final String date;
  final String text;
  const Experience({
    super.key,
    required this.title,
    required this.text,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: experienceTitleStyle,
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          date,
          style: experienceDateStyle,
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          text,
          style: experienceTextStyle,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
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
          Experience(
            title: "Développeur fullstack - Projet de fin d'étude",
            date: "Outside EIP | Septembre 2021 - Décembre 2023",
            text:
                "Mon projet de fin d'étude s'appelle Outside. L'objectif de notre projet est de renouer"
                "l'envie de découvrir la faune et la flore qui nous entoure. Notre application est"
                "développée en Java, React Native ainsi que Vue js",
          ),
          Experience(
              title: "Stagiaire Full Stack Web",
              date: "SIGMA | Mars - Septembre 2022",
              text:
                  "Développement d'un logiciel interne pour remplacer trois applications existantes par"
                  "une seule, plus moderne et pratique. Utilisation de Symfony (PHP), React (front-end)"
                  "et SQL (base de données). Affichage sur des télévisions connectées à des Raspberry"
                  "Pi, contrôlé via un dashboard."),
          Experience(
              title: "Stagiaire Full Stack",
              date: "ICI | Septembre - Décembre 2020",
              text:
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
          Experience(
              title: "EPITECH - NEW YORK (USA) / PARIS (FRANCE)",
              text:
                  "• Notre cursus nous propose de partir à l'étranger en 4ème année. J'ai "
                  "choisi l'école New School Center For Media pour découvrir le monde de"
                  "la finance ainsi que l'économie américaine.\n"
                  "• Nous avons notamment réaliser des algorithmes de trading.",
              date:
                  "Expert en Technologies de l’Information | septembre 2022 - Juin 2024"),
          Experience(
              title: "EPITECH - NANTES (FRANCE) / BARCELONE (ESPAGNE)",
              text: "• Programmation en C, C++"
                  ", Python, Javascript, Java, PHP, Dart, Devops"
                  "(Docker, kubernetes, jenkins), Flutter",
              date: "Bachelor | septembre 2019 - juin 2022"),
          Experience(
              title: "Saint Joseph du Loquidy - NANTES",
              text: "• Bac S spécialité SVT option ISN (2019)\n"
                  "• Brevet Mention assez bien (2015)",
              date: "Collège et lycée | septembre 2012 - juin 2019")
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
    return InkWell(
      onTap: () => (
        link == "lifeGame"
            ? Navigator.of(context).pushNamed('/lifegame')
            : link == "leniaGame"
                ? Navigator.of(context).pushNamed('/leniagame')
                : launchUrlString(link),
      ),
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
              Experience(
                  title: name,
                  text: description,
                  date: 'Language utilisé : $language')
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
