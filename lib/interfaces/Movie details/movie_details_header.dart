import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_locator/interfaces/Movie%20details/imageArcBanner.dart';
import 'package:movie_locator/interfaces/Movie%20details/poster.dart';

class MovieDetailsHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var movieInformation = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Avengers Endgame'.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          children: [
            CircleAvatar(
              radius: 7.0,
              backgroundImage: AssetImage('images/star.png'),
              backgroundColor: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '8.5/10 IMDB',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 12.0),
        // Row(children: _buildCategoryChips(textTheme)),
      ],
    );

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 140.0),
          child: ImageArcBanner(),
        ),
        Positioned(
          bottom: 40.0,
          left: 16.0,
          right: 16.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Poster(
                'images/Avengers.jpg'
              ),
              SizedBox(width: 16.0),
              Expanded(child: movieInformation),
            ],
          ),
        ),
      ],
    );

  }

}