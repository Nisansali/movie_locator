import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_locator/interfaces/Movie_List.dart';

class DateTimeScreen extends StatefulWidget {
  @override
  _DateTimeScreenState createState() => _DateTimeScreenState();
}

class _DateTimeScreenState extends State<DateTimeScreen> {
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
                    radius: 23.0,
                    backgroundImage: AssetImage('images/previous.png'),
                    backgroundColor: Colors.white,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MovieListScreen()));
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Date and Time Selection',
                      style: TextStyle(
                        fontFamily: 'Pattaya',
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 23.0,
                    backgroundImage: AssetImage(''),
                    backgroundColor: Colors.blueGrey.shade900,
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'select a date'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),//or 15.0
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      padding: const EdgeInsets.all(15.0),
                      color: Colors.black,
                      child: Text(
                        '17',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),//or 15.0
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.black,
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        '17',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),//or 15.0
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      padding: const EdgeInsets.all(15.0),
                      color: Colors.black,
                      child: Text(
                        '17',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),//or 15.0
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      padding: const EdgeInsets.all(15.0),
                      color: Colors.black,
                      child: Text(
                        '17',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'select a showtime'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Colombo City Center',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 1,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    crossAxisCount: 5,
                    childAspectRatio: MediaQuery.of(context)
                        .size.width /
                        (MediaQuery.of(context).size.height / 2.7),),
                  itemBuilder: (context, index) {
                    // DataAddOn item = filteredList[index];
                    return SizedBox(
                      child: new Card(
                        elevation: 3,
                        color: Colors.black.withOpacity(0.7),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Text(
                                "time" ,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Savoy Cinema',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 1,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    crossAxisCount: 5,
                    childAspectRatio: MediaQuery.of(context)
                        .size.width /
                        (MediaQuery.of(context).size.height / 2.7),),
                  itemBuilder: (context, index) {
                    // DataAddOn item = filteredList[index];
                    return SizedBox(
                      child: new Card(
                        elevation: 3,
                        color: Colors.black.withOpacity(0.7),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Text(
                                "time" ,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
              ),
            ],
          )
        ],
      ),
    );
  }
}