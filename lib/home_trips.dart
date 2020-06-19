import 'package:flutter/material.dart';

import 'package:platzi_trips_app/description_place.dart';
import 'package:platzi_trips_app/header_appbar.dart';
import 'package:platzi_trips_app/review_list.dart';

class HomeTrips extends StatelessWidget {
  final Map<String, dynamic> place = {
    'stars': 3,
    'title': 'Duwili Ella',
    'description':
        'Veniam laborum ad nisi velit officia ipsum cupidatat ut cupidatat laboris culpa anim mollit do. Et qui voluptate magna irure elit eu esse non velit Lorem irure. Consequat duis laborum aliquip ex amet nostrud deserunt veniam exercitation labore dolor. Nulla dolore labore cupidatat aliquip occaecat minim magna nisi amet. Magna eiusmod dolor deserunt mollit irure exercitation.'
  };

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace(
              title: place['title'],
              stars: place['stars'],
              description: place['description'],
            ),
            ReviewList(),
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }
}
