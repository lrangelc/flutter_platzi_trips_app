import 'package:flutter/material.dart';

import 'package:platzi_trips_app/stars.dart';

class DescriptionPlace extends StatelessWidget {
  final String title;
  final int stars;
  final String description;

  const DescriptionPlace({Key key, this.title, this.stars, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleStarsWidget = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                fontFamily: 'Lato'),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
            margin: EdgeInsets.only(
              top: 320.0,
            ),
            child: Stars(stars: stars)),
      ],
    );

    final descriptionWidget = Container(
      height: 50.0,
      margin: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Text(
          description,
          style: TextStyle(
            fontFamily: 'Lato',
          ),
        ),
      ),
    );

    return Column(
      children: [
        titleStarsWidget,
        descriptionWidget,
      ],
    );
  }
}
