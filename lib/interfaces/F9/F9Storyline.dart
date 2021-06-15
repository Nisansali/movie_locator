import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class F9Storyline extends StatelessWidget {
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
          'Dom Toretto is living the quiet life off the grid with Letty and his son, but they know that danger always lurks just over the peaceful horizon. This time, that threat forces Dom to confront the sins of his past to save those he loves most. His crew soon comes together to stop a world-shattering plot by the most skilled assassin and high-performance driver they have ever encountered -- Dom''s forsaken brother.',
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