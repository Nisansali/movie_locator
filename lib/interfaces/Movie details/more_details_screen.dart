import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_locator/interfaces/DateTimeScreen.dart';
import 'package:movie_locator/interfaces/Movie%20details/movie_details_header.dart';
import 'package:movie_locator/interfaces/Movie%20details/storyline.dart';
import 'package:movie_locator/interfaces/Movie_List.dart';

class MoredetailsScreen extends StatefulWidget {
  @override
  _MoredetailsScreenState createState() => _MoredetailsScreenState();
   
}

class _MoredetailsScreenState extends State<MoredetailsScreen>{
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

                    MovieDetailsHeader(),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Storyline(),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DateTimeScreen()));
                            },
                            child: Text('show time'.toUpperCase(), style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            )
                            ),
                            textColor: Colors.blue,
                            shape: RoundedRectangleBorder(side: BorderSide(
                                color: Colors.blue,
                                width: 2,
                                style: BorderStyle.solid
                            ), borderRadius: BorderRadius.circular(50)),
                          )
                        ],
                      ),
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