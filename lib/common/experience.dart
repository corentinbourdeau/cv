import 'package:flutter/material.dart';
import 'package:cv/styles/texts.dart';

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
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
        ],
      ),
    );
  }
}
