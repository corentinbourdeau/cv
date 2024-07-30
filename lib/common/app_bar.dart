import 'dart:html' as html;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

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
      actions: [
        ElevatedButton(
          onPressed: () async {
            // Charger le contenu du fichier PDF
            final data =
                await rootBundle.load('assets/docs/corentin_bourdeau.pdf');
            final bytes = data.buffer.asUint8List();

            // Convertir en Base64 pour les navigateurs web
            final base64Data = base64Encode(bytes);
            final url = 'data:application/pdf;base64,$base64Data';

            // Créer un élément pour le téléchargement
            html.AnchorElement anchorElement = html.AnchorElement(href: url)
              ..setAttribute("download", "corentin_bourdeau.pdf")
              ..click();
          },
          child: const Icon(
            Icons.download,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
