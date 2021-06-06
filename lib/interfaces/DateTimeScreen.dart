import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 2,
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
                                "date" ,
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