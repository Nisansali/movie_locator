import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Storyline extends StatelessWidget {
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
          'Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle. Meanwhile, the remaining Avengers -- Thor, Black Widow, Captain America and Bruce Banner -- must figure out a way to bring back their vanquished allies for an epic showdown with Thanos -- the evil demigod who decimated the planet and the universe.',
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