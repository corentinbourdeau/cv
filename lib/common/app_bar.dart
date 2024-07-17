import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Center(
        child: Column(
          children: [
            Text(
              'Corentin Bourdeau',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
