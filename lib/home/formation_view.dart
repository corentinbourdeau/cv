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
                title: "2023/2024 PARIS (FRANCE)/ BRUXELLES (BELGIQUE)",
                text:
                    "• Partime puis Stage à Talentquare : AngularJs/ Python/Flutter",
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
            startChild: const Experience(
                title: "2022/2023 NEW YORK (USA)",
                text:
                    "• Découvrir le monde de la finance ainsi que l'économie américaine."
                    "Nous avons notamment réaliser des algorithmes de trading.",
                date: "4ème année Epitech - New School Center For Media"),
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
                title: "2021/2022 BARCELONA (SPAIN)",
                text: "• Applications (Reproduction de skype), Dashboard",
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
            startChild: const Experience(
                title: "2020/2021 NANTES (FRANCE)",
                text: "• 'Piscine' C++",
                date: "2ème année Epitech"),
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
                text: "• 'Piscine' C",
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
            startChild: const Experience(
                title: "2016/2019 NANTES (FRANCE)",
                text: "• Option ISN (Terminale)"
                "• Option ICN (2nd)",
                date: "Baccalauréat S"),
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
                text:"",
                date: "Brevet"),
          ),
        ],
      ),
    );
  }
}
