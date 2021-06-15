import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LucaStoryline extends StatelessWidget {
  // Storyline(this.storyline);
  // final String storyline;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Story line',
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Source Sans Pro',
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          'Set in a beautiful seaside town on the Italian Riviera, the original animated feature is a coming-of-age story about one young boy experiencing an unforgettable summer filled with gelato, pasta and endless scooter rides. Luca shares these adventures with his newfound best friend, but all the fun is threatened by a deeply-held secret: he is a sea monster from another world just below the waters surface.',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
          ),
        ),
        // No expand-collapse in this tutorial, we just slap the "more"
        // button below the text like in the mockup.
      ],
    );
  }
}