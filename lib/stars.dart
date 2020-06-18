import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  final int stars;
  final double size;

  const Stars({Key key, this.stars, this.size: 24}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        right: 3.0,
      ),
      child: Icon(
        isOn ? Icons.star : Icons.star_border,
        color: Color(0xFFf2C611),
        size: size,
      ),
    );
  }
}
