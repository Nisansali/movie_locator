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
          'Lorem Ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla',
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