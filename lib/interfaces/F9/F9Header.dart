import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_locator/interfaces/F9/F9ArcBanner.dart';
import 'package:movie_locator/interfaces/Luca Movie details/LucaArcBanner.dart';
import 'package:movie_locator/interfaces/Movie%20details/poster.dart';

class F9Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var movieInformation = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'fast & furious 9'.toUpperCase(),
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
              '5.2/10 IMDB',
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
          child: F9ArcBanner(),
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
                  'images/F9.jpg'
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