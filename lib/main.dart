import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Widgets de base",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Atelier 2'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 193, 201, 215),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                'Bienvenue dans cet atelier !',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 199, 255, 68),
                ),
              ),
              SizedBox(height: 20),
              Image.network(
                'https://commons.wikimedia.org/wiki/Special:FilePath/Figure_in_Manga_style_variation_1.png?width=300',
                width: 200,
              ),
              SizedBox(height: 20),
              Text(
                'Découvrez comment construire une interface simple et élégante.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("Tu as cliqué sur Commencer.");
                    },
                    child: Text('Commencer'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      print("Tu as cliqué sur En savoir plus.");
                    },
                    child: Text('En savoir plus'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
