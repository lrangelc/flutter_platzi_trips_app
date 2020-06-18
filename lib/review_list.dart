import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class ReviewList extends StatelessWidget {
  final Map<String, dynamic> user = {
    'name': 'Luis Rangel Castro',
    'reviews': 1,
    'photos': 5,
    'comment': 'Super Cool!',
    'pathImage': 'https://picsum.photos/id/237/200/300',
    'stars': 5
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Review(
          reviews: user['reviews'],
          pathImage: user['pathImage'],
          photos: user['photos'],
          comment: user['comment'],
          name: user['name'],
          stars: user['stars'],
        ),
        Review(
          reviews: user['reviews'],
          pathImage: user['pathImage'],
          photos: user['photos'],
          comment: user['comment'],
          name: user['name'],
          stars: user['stars'],
        ),
        Review(
          reviews: user['reviews'],
          pathImage: user['pathImage'],
          photos: user['photos'],
          comment: user['comment'],
          name: user['name'],
          stars: user['stars'],
        ),
      ],
    );
  }
}
