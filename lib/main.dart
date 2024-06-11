import 'package:flutter/material.dart';

import 'mein_container.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Meine App'),
          actions: const [
            Icon(Icons.settings),
          ],
        ),
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: MeinContainer(
                name: 'Aniq',
                adresse: 'Darmstadt',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: MeinContainer(
                name: 'Max',
                adresse: 'Frankfurt',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: MeinContainer(
                name: 'Max',
                adresse: 'Mannheim',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: MeinContainer(
                name: 'Frage',
                adresse: 'Mannheim',
              ),
            )
          ],
        ),
      ),
    );
  }
}
