import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String pathImage = 'https://picsum.photos/id/237/200/300';

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      child: CircleAvatar(
        backgroundImage: NetworkImage(pathImage),
      ),
    );

    return Row(
      children: [
        photo,
      ],
    );
  }
}
