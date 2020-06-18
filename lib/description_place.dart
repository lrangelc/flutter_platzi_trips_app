import 'package:flutter/material.dart';

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
        _stars(stars)
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

  Widget _stars(int stars) {
    List<Widget> starsOn = [];
    List<Widget> starsOff = [];
    List(stars).forEach((element) => starsOn.add(_star(true)));
    List(5 - stars).forEach((element) => starsOff.add(_star(false)));

    List<Widget> starsFinal = []..addAll(starsOn)..addAll(starsOff);

    return Row(
      children: starsFinal,
    );
  }

  Widget _star(bool isOn) {
    return Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        isOn ? Icons.star : Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );
  }
}
