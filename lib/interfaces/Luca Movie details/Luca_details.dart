import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_locator/interfaces/Movie_List.dart';
import 'package:movie_locator/interfaces/Luca Movie details/Luca_header.dart';
import 'package:movie_locator/interfaces/Luca Movie details/luca_storyline.dart';

import '../DateTimeScreen.dart';

class LucaDetailsScreen extends StatefulWidget {
  @override
  _LucaDetailsScreenState createState() => _LucaDetailsScreenState();

}

class _LucaDetailsScreenState extends State<LucaDetailsScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: Stack(
        children: [
          ListView(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('images/previous.png'),
                    backgroundColor: Colors.white,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MovieListScreen()));
                      },
                    ),
                  ),
                  Container(
                    child: Text(
                      'Movie Details',
                      style: TextStyle(
                        fontFamily: 'Pattaya',
                        fontSize: 40.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage(''),
                    backgroundColor: Colors.blueGrey.shade900,
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Container(
                alignment: Alignment.center,
                height: 750,
                color: Colors.black,
                child: ListView(
                  children: [

                    LucaHeader(),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: LucaStoryline(),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}