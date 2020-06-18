import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class User {
  final String name;
  final int reviews;
  final int photos;
  final String comment;
  final String pathImage;
  final int stars;

  User(
      {this.name,
      this.reviews,
      this.photos,
      this.comment,
      this.pathImage,
      this.stars});
}

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<User> users = [
      User(
          name: 'Luis Rangel',
          reviews: 1,
          photos: 5,
          comment: 'Super Cool!',
          pathImage: 'https://picsum.photos/id/237/200/300',
          stars: 3),
      User(
          name: 'Luis Castro',
          reviews: 10,
          photos: 5,
          comment: 'Super Cool!',
          pathImage: 'https://picsum.photos/id/238/200/300',
          stars: 5),
      User(
          name: 'Abdel Rangel Castro',
          reviews: 2,
          photos: 5,
          comment: 'Super!',
          pathImage: 'https://picsum.photos/id/239/200/300',
          stars: 5),
      User(
          name: 'Rocio Pinzon',
          reviews: 2,
          photos: 5,
          comment: 'Super!',
          pathImage: 'https://picsum.photos/id/250/200/300',
          stars: 1),
    ];

    return _list(users);
  }

  Widget _list(List<User> users) {
    List<Widget> reviews = [];

    users.forEach((element) {
      reviews.add(_review(element));
    });

    return Column(
      children: reviews,
    );
  }

  Widget _review(User user) {
    return Review(
      reviews: user.reviews,
      pathImage: user.pathImage,
      photos: user.photos,
      comment: user.comment,
      name: user.name,
      stars: user.stars,
    );
  }
}
