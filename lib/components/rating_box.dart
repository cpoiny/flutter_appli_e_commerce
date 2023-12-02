import 'package:flutter/material.dart';

class RatingBox extends StatefulWidget {
  const RatingBox({super.key});

  @override
  State createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {

  //Notre state : un int pour connaitre le nombre d'étoiles
  int _rating = 0;
  //taille des etoiles
  final double _size = 20;

  void _setRating (int rating){
    //Si rating est égal à 3 alors on vide les étoiles
    setState(() {
      if (_rating == 3 && rating == 3){
        _rating = 0;
        return;
      }
      _rating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      // horizontal 
      mainAxisAlignment: MainAxisAlignment.end,
      // vertical
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
         Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(icon:(_rating >= 1 
            ? Icon(Icons.favorite,
            size: _size,) 
            : Icon(Icons.favorite_border, 
            size: _size)),
            color: Colors.amber[500],
            iconSize : _size,
            onPressed : () {
              _setRating(1);},
            ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(icon:(_rating >= 2 
            ? Icon(Icons.favorite,
            size: _size,) 
            : Icon(Icons.favorite_border, 
            size: _size)),
            color: Colors.amber[500],
            iconSize : _size,
            onPressed : () {
              _setRating(2);},
            ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(icon:(_rating >= 3 
            ? Icon(Icons.favorite,
            size: _size,) 
            : Icon(Icons.favorite_border, 
            size: _size)),
            color: Colors.amber[500],
            iconSize : _size,
            onPressed : () {
              _setRating(3);},
            ),
        ),
      ],
    );
  }
}