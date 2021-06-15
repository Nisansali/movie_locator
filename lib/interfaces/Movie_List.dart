import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:movie_locator/interfaces/F9/F9Details.dart';
import 'package:movie_locator/interfaces/Movie%20details/more_details_screen.dart';
import 'package:movie_locator/interfaces/Tom%20and%20Jerry/TomJerryDetails.dart';
import 'package:movie_locator/interfaces/login_page.dart';
import 'package:movie_locator/interfaces/Luca Movie details/Luca_details.dart';
import 'package:movie_locator/interfaces/movie_locations.dart';

class MovieListScreen extends StatefulWidget {
  @override
  _MovieListScreenState createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blueGrey.shade900,
      body: Stack(
        children: [
          ListView(
            scrollDirection: Axis.vertical,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                    ),
                  ),
                  Container(
                    child: Text(
                      'Movies',
                      style: TextStyle(
                        fontFamily: 'Pattaya',
                        fontSize: 40.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('images/filter.png'),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width / 12,
                        MediaQuery.of(context).size.height / 80,
                        MediaQuery.of(context).size.width / 12,
                        0),
                    child: SearchBar(
                      searchBarStyle: SearchBarStyle(
                        borderRadius: BorderRadius.circular(56),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
                width: 20.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.center,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  border: Border.all(color: Colors.blueAccent),
                  color: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 100.0,
                            height: 150.0,
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.black,
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/Avengers.jpg',
                                  fit: BoxFit.fitWidth,
                                  width: double.infinity,
                                ))
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Avengers Endgame',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Action/Sci-Fi',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 60.0,
                              height: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0),
                                    ],
                                  ),
                                  child: Text(
                                    '2019',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 60.0,
                              height: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0),
                                    ],
                                  ),
                                  child: Text(
                                    '13+',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 7.0,
                              backgroundImage: AssetImage('images/star.png'),
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(
                              width: 70.0,
                              height: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0),
                                    ],
                                  ),
                                  child: Text(
                                    '8.5/10',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 70.0,
                              height: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0),
                                    ],
                                  ),
                                  child: Text(
                                    '3h 2m',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: AssetImage('images/gps.png'),
                              backgroundColor: Colors.black,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MovieLocations()));
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            FlatButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => MoredetailsScreen()));
                              },
                              child: Text('More Details', style: TextStyle(
                                  color: Colors.blueAccent,
                              )
                              ),
                              textColor: Colors.blueAccent,
                              shape: RoundedRectangleBorder(side: BorderSide(
                                  color: Colors.blueAccent,
                                  width: 1,
                                  style: BorderStyle.solid
                              ), borderRadius: BorderRadius.circular(50)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),

              Container(
                alignment: Alignment.center,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  border: Border.all(color: Colors.blueAccent),
                  color: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 100.0,
                            height: 150.0,
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.black,
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/luca.png',
                                  fit: BoxFit.fitWidth,
                                  width: double.infinity,
                                ))
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Luca',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Comedy/Animation',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 60.0,
                              height: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0),
                                    ],
                                  ),
                                  child: Text(
                                    '2021',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 60.0,
                              height: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0),
                                    ],
                                  ),
                                  child: Text(
                                    '7+',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 7.0,
                              backgroundImage: AssetImage('images/star.png'),
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(
                              width: 70.0,
                              height: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0),
                                    ],
                                  ),
                                  child: Text(
                                    '9/10',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 70.0,
                              height: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0),
                                    ],
                                  ),
                                  child: Text(
                                    '1h 35m',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: AssetImage('images/gps.png'),
                              backgroundColor: Colors.black,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MovieLocations()));
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            FlatButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => LucaDetailsScreen()));
                              },
                              child: Text('More Details', style: TextStyle(
                                color: Colors.blueAccent,
                              )
                              ),
                              textColor: Colors.blueAccent,
                              shape: RoundedRectangleBorder(side: BorderSide(
                                  color: Colors.blueAccent,
                                  width: 1,
                                  style: BorderStyle.solid
                              ), borderRadius: BorderRadius.circular(50)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),

              Container(
                alignment: Alignment.center,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  border: Border.all(color: Colors.blueAccent),
                  color: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 100.0,
                            height: 150.0,
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.black,
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/TomAndJerry.jpg',
                                  fit: BoxFit.fitWidth,
                                  width: double.infinity,
                                ))
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Tom and Jerry',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Family/Comedy',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 60.0,
                              height: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0),
                                    ],
                                  ),
                                  child: Text(
                                    '2021',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 60.0,
                              height: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0),
                                    ],
                                  ),
                                  child: Text(
                                    '8+',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 7.0,
                              backgroundImage: AssetImage('images/star.png'),
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(
                              width: 70.0,
                              height: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0),
                                    ],
                                  ),
                                  child: Text(
                                    '5.3/10',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 70.0,
                              height: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0),
                                    ],
                                  ),
                                  child: Text(
                                    '1h 45m',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: AssetImage('images/gps.png'),
                              backgroundColor: Colors.black,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MovieLocations()));
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            FlatButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => TomandJerryDetailsScreen()));
                              },
                              child: Text('More Details', style: TextStyle(
                                color: Colors.blueAccent,
                              )
                              ),
                              textColor: Colors.blueAccent,
                              shape: RoundedRectangleBorder(side: BorderSide(
                                  color: Colors.blueAccent,
                                  width: 1,
                                  style: BorderStyle.solid
                              ), borderRadius: BorderRadius.circular(50)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),

              Container(
                alignment: Alignment.center,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  border: Border.all(color: Colors.blueAccent),
                  color: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 100.0,
                            height: 150.0,
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.black,
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'images/F9.jpg',
                                  fit: BoxFit.fitWidth,
                                  width: double.infinity,
                                ))
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Fast & Furious 9',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Action/Adventure',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 60.0,
                              height: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0),
                                    ],
                                  ),
                                  child: Text(
                                    '2021',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 60.0,
                              height: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0),
                                    ],
                                  ),
                                  child: Text(
                                    '13+',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 7.0,
                              backgroundImage: AssetImage('images/star.png'),
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(
                              width: 70.0,
                              height: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0),
                                    ],
                                  ),
                                  child: Text(
                                    '5.2/10',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 70.0,
                              height: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0),
                                    ],
                                  ),
                                  child: Text(
                                    '2h 25m',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: AssetImage('images/gps.png'),
                              backgroundColor: Colors.black,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MovieLocations()));
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            FlatButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => F9DetailsScreen()));
                              },
                              child: Text('More Details', style: TextStyle(
                                color: Colors.blueAccent,
                              )
                              ),
                              textColor: Colors.blueAccent,
                              shape: RoundedRectangleBorder(side: BorderSide(
                                  color: Colors.blueAccent,
                                  width: 1,
                                  style: BorderStyle.solid
                              ), borderRadius: BorderRadius.circular(50)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}