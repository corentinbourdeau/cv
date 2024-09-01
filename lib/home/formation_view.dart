import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:cv/common/experience.dart';

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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Center(
            child: Text(
              "FORMATIONS",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            isFirst: true,
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.black,
            ),
            beforeLineStyle: const LineStyle(
              color: Colors.white,
              thickness: 6,
            ),
            endChild: const Experience(
                title: "2023/2024 - PARIS (FRANCE)",
                text: "• Fin du projet de fin d'étude",
                date:
                    "5ème année Epitech - Expert en Technologies de l’Information"),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.9,
            thickness: 6,
            color: Colors.white,
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.9,
            beforeLineStyle: const LineStyle(
              color: Colors.white,
              thickness: 6,
            ),
            afterLineStyle: const LineStyle(
              color: Colors.white,
              thickness: 6,
            ),
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.black,
            ),
            startChild: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
              ),
              child: const Experience(
                  title: "2022/2023 - NEW YORK (États-Unis)",
                  text:
                      "• Découverte du monde de la finance ainsi que l'économie américaine.\n"
                      "Nous avons notamment réalisé des algorithmes de trading.\n"
                      "• Avancement du projet de fin d'étude.",
                  date: "4ème année Epitech - New School Center For Media"),
            ),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.9,
            thickness: 6,
            color: Colors.white,
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            beforeLineStyle: const LineStyle(
              color: Colors.white,
              thickness: 6,
            ),
            afterLineStyle: const LineStyle(
              color: Colors.white,
              thickness: 6,
            ),
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.black,
            ),
            endChild: const Experience(
                title: "2021/2022 - Barcelone (Espagne)",
                text: "• Application : Reproduction de Skype en C++.\n"
                    "• Application web : Dashboard (Javascript)\n"
                    "• Application mobile : Reproduction de Reddit en dart.\n"
                    "• Devops (Dockerfile).\n"
                    "• Sécurité (Capture-the-Flag).\n"
                    "• Mathématiques: Exercices en Python.\n"
                    "• Début du projet de fin d'étude.\n",
                date: "3ème année Epitech - Bachelor"),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.9,
            thickness: 6,
            color: Colors.white,
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.9,
            beforeLineStyle: const LineStyle(
              color: Colors.white,
              thickness: 6,
            ),
            afterLineStyle: const LineStyle(
              color: Colors.white,
              thickness: 6,
            ),
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.black,
            ),
            startChild: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
              ),
              child: const Experience(
                  title: "2020/2021 NANTES (FRANCE)",
                  text: "• 'Piscine' C++.\n"
                      "• Programmation fonctionnelle : Exercice de tri, crompression d'image, automate cellulaire (Haskell).\n"
                      "• Sécurité (Capture-the-Flag).\n"
                      "• Analyse numérique. (Python)\n"
                      "• Devops (Dockerfile).\n"
                      "• Mathématiques: Exercices en Python.\n"
                      "• Application de communication collaborative : Sur le principe de teams en C\n"
                      "• Une plateforme rétro : jeux d'arcade en C++\n"
                      "• Projet de fin d'année : Jeux de communication automatique en C (server), C++ (gui) et IA\n",
                  date: "2ème année Epitech"),
            ),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.9,
            thickness: 6,
            color: Colors.white,
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            beforeLineStyle: const LineStyle(
              color: Colors.white,
              thickness: 6,
            ),
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.black,
            ),
            endChild: const Experience(
                title: "2019/2020 NANTES (FRANCE)",
                text: "• 'Piscine' en C\n"
                    "• Beaucoup d'exercices en C : Jeux graphique, résolution de labyrinthe\n"
                    "• Introduction à l'IA et au web\n"
                    "• Mathématiques: Exercices en Python.\n"
                    "• Sécurité (Capture-the-Flag).\n"
                    "• Module d'Administrateur système: gestion de VIRTUAL Machine (VM)\n"
                    "• Projet de fin d'année : Jeux vidéo de rôle (RPG) isométrique fait en C\n",
                date: "1ère année Epitech"),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.9,
            thickness: 6,
            color: Colors.white,
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.9,
            beforeLineStyle: const LineStyle(
              color: Colors.white,
              thickness: 6,
            ),
            afterLineStyle: const LineStyle(
              color: Colors.white,
              thickness: 6,
            ),
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.black,
            ),
            startChild: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
              ),
              child: const Experience(
                  title: "2016/2019 NANTES (FRANCE)",
                  text: "• Option ISN (Terminale).\n"
                      "• Option ICN (2nd).",
                  date: "Baccalauréat S"),
            ),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.9,
            thickness: 6,
            color: Colors.white,
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            isLast: true,
            beforeLineStyle: const LineStyle(
              color: Colors.white,
              thickness: 6,
            ),
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.black,
            ),
            endChild: const Experience(
                title: "2012/2016 NANTES (FRANCE)",
                text: "",
                date: "• Brevet avec mention assez bien"),
          ),
        ],
      ),
    );
  }
}
