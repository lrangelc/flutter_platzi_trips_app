import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  _FloatingActionButtonGreenState createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      onPressed: onPressedFav,
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
      ),
    );
  }

  void onPressedFav() {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Agregaste a tus Favoritos'),
      ),
    );
    isFavorite = true;
    setState(() {});
  }
}
