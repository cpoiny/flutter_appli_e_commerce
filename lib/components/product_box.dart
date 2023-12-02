import 'package:flutter/material.dart';
import './rating_box.dart';

//on tape stless => permet ensuite de créer un template de widget
class ProductBox extends StatelessWidget {
  const ProductBox({
    super.key,
    //argument du constructeur productBox
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

//Propriétés du product box
  final String name;
  final String description;
  final int price;
  final String image;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 130,
      child: Card(
        child : Row(
          mainAxisAlignment: MainAxisAlignment.
          spaceEvenly,
          children: <Widget>[
            Image.asset("web/assets/img/$image"),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.
                  spaceEvenly,
                  children : <Widget>[
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,     
                      ),
                    ),
                    Text(
                      description,
                    ),
                    Text(
                      "Prix: ${price.toString()}€",
                    ),
                    const RatingBox(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}