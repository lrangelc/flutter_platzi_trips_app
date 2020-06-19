import 'package:flutter/material.dart';

import 'package:platzi_trips_app/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage(
            pathImage: 'assets/img/4226939.jpeg',
          ),
          CardImage(
            pathImage: 'assets/img/4050888.jpeg',
          ),
          CardImage(
            pathImage: 'assets/img/3130370.jpeg',
          ),
          CardImage(
            pathImage: 'assets/img/4557829.jpeg',
          ),
          CardImage(
            pathImage: 'assets/img/4321944.jpeg',
          ),
        ],
      ),
    );
  }
}
