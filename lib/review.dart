import 'package:flutter/material.dart';
import 'package:platzi_trips_app/stars.dart';

class Review extends StatelessWidget {
  final String name;
  final String pathImage;
  final int reviews;
  final int photos;
  final String comment;
  final int stars;

  const Review(
      {Key key,
      this.name,
      this.pathImage,
      this.reviews,
      this.photos,
      this.comment,
      this.stars})
      : super(key: key);
  // final String pathImage = 'https://picsum.photos/id/237/200/300';

  @override
  Widget build(BuildContext context) {
    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final details = '$reviews reviews, $photos photos';

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 13.0,
          color: Color(0xFFa3a5a7),
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 17.0,
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        Row(
          children: [
            userInfo,
            SizedBox(width: 10.0,),
            Stars(
              stars: stars,
              size: 14.0,
            ),
          ],
        ),
        userComment,
      ],
    );

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
        userDetails,
      ],
    );
  }
}
