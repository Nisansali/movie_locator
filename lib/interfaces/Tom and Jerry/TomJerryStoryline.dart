import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TomJerryStoryline extends StatelessWidget {
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
          'A legendary rivalry reemerges when Jerry moves into New York City''s finest hotel on the eve of the wedding of the century, forcing the desperate event planner to hire Tom to get rid of him. As mayhem ensues, the escalating cat-and-mouse battle soon threatens to destroy her career, the wedding, and possibly the hotel itself.',
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