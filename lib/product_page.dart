import 'package:flutter/material.dart';
import './components/product_box.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 58, 183, 135)),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      //home: const TestPage3(title: 'Mon application'),
      //Title "Nos produits" est affiché grâce au constructeur required this.title dans ProductPage
      home: const ProductPage(title: 'Nos produits'),
    );
  }
}

class ProductPage extends StatelessWidget {
  //Constructeur : required this.title permet de pouvoir avoir le title dans MyApp
  const ProductPage({super.key, required this.title});
  final String title;

// On créee une méthode pour evt touch
// Context :Permet d'utiliser toutes les données qui sont en cours actuellement
void _showDialog(BuildContext context, String txt){
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Message"),
        content: Text("Vous avez tapoté sur $txt"),
        actions: <Widget>[
          CloseButton(
            //action c'est une fonction anonyme
            onPressed: () {
              // pop veut dire enleve le dernier ajouté, c'est l'action pour fermer la boite de dialogue
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    }
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // body: const ProductBox(
      //   name: "Iphone9",
      //   description: "Un téléphone",
      //   price: 250,
      //   image: "img/iphone.png",
      // ),
      // body: const Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //    ProductBox(name: "Iphone9" , description: "Un Iphone", price: 250, image: "iphone.png"),
      //    ProductBox(name: "Laptop", description: "Un laptop", price: 210, image: "laptop.png"),
      //    ProductBox(name: "Pixel" , description: "Un pixel", price: 180, image: "pixel.png"),
      //    ProductBox(name: "Tablet" , description: "Une tablette", price: 165, image: "tablet.png")
      //   ],
      //   ),
      body: ListView(
        // taille d'écran s'adapte avec le shrinkWrap
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2,10,2,10),
        children: <Widget>[
          GestureDetector(
            onTap: () {
              _showDialog(context, "Iphone");
            },
            child: const ProductBox(name: "Iphone9" , description: "Un Iphone", price: 250, image: "iphone.png",),
          ),
          GestureDetector(
              onTap: () {
              _showDialog(context, "Laptop");
            },
            child: const ProductBox(name: "Laptop", description: "Un laptop", price: 210, image: "laptop.png",),
          ),
          GestureDetector(
              onTap: () {
              _showDialog(context, "Pixel");
            },
            child: const ProductBox(name: "Pixel" , description: "Un pixel", price: 180, image: "pixel.png",),
          ),
          GestureDetector(
              onTap: () {
              _showDialog(context, "Tablet");
            },
            child: const ProductBox(name: "Tablet" , description: "Une tablette", price: 188, image: "tablet.png",),
          ),
        ]),
    );
  }
}