import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            'Duwili Ella',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            star,
            star,
            star,
            star,
            star,
          ],
        ),
      ],
    );

    final description = Container(
      height: 50.0,
      margin: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Text(
          'Incididunt fugiat irure voluptate officia dolor. Sit pariatur consequat adipisicing officia ex qui Lorem. Proident nisi labore nulla mollit. Fugiat esse et veniam cillum aliqua cillum ea culpa consequat culpa nostrud qui exercitation est. Deserunt adipisicing labore velit id est. Ullamco incididunt labore do nostrud deserunt ut irure elit. Labore dolore consectetur excepteur consectetur adipisicing excepteur ullamco fugiat consequat consequat aute.',
        ),
      ),
    );

    return Column(
      children: [titleStars, description],
    );
  }
}
