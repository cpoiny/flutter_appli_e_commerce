import 'package:flutter/material.dart';
import 'package:flutter_3/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: "Ma page d'accueil"),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  // l'affichage se trouve dans la fonction build (correspond au render de React)
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child : ElevatedButton(
          onPressed: () {
            //Permet de push dans le navigateur la nouvelle page et il garde en mémoire les pages 
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => 
              const ProductPage(title: "Mes produits"),)
            );
          }, 
          child: const Text(
            "Aller vers la page suivante",
            )
          )
      ),
    );
  }
}
