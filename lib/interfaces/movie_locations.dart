import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieLocations extends StatefulWidget {
  @override
  _MovieLocationScreenState createState() => _MovieLocationScreenState();
}

class _MovieLocationScreenState extends State<MovieLocations>{

  var linkText = TextStyle(color: Colors.blueGrey.shade900, fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: Stack(
        children: [

          ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('images/previous.png'),
                    backgroundColor: Colors.white,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      'Locations',
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

              SizedBox(
                height: 20.0,
                width: 20.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                // padding: const EdgeInsets.all(4.0),
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0)),
                  color: Colors.blueGrey.shade200,
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
                            color: Colors.blueGrey.shade200,
                          ),
                          child: Image.asset(
                            'images/mc.jpg',
                              height: 500,
                              width: 200,
                              fit: BoxFit.fitWidth
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Majestic City',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey.shade800,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Seats available : 15 ',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blueGrey.shade800,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [

                            RichText(text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.place_outlined, size: 25 , color: Colors.blueGrey.shade800,),
                                ),
                                TextSpan(
                                  style: linkText,
                                  text:"Location",
                                  recognizer: TapGestureRecognizer()..onTap = () async{
                                    var url = "https://www.google.com/maps/d/u/0/viewer?ie=UTF8&oe=UTF8&msa=0&mid=1AUauVae_pujIn_vWzzAmBvXQdLI&ll=6.894006000000018%2C79.85479100000002&z=17";
                                    if(await canLaunch(url)){
                                      await launch(url);
                                    }else{
                                      throw "cannot load location";
                                    }
                                  }
                                ),
                              ]
                            ))
                          ],
                        ),

                        Row(
                          children: [
                            ClipRect(

                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                // padding: const EdgeInsets.all(4.0),
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0)),
                  color: Colors.blueGrey.shade200,
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
                            color: Colors.blueGrey.shade200,
                          ),
                          child: Image.asset(
                              'images/ccc.ppg',
                              height: 500,
                              width: 200,
                              fit: BoxFit.fitWidth
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Colombo City Center',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey.shade800,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Seats available : 05 ',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blueGrey.shade800,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [

                            RichText(text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(Icons.place_outlined, size: 25 , color: Colors.blueGrey.shade800,),
                                  ),
                                  TextSpan(
                                      style: linkText,
                                      text:"Location",
                                      recognizer: TapGestureRecognizer()..onTap = () async{
                                        var url = "https://www.google.com/maps/dir//colombo+city+center+location/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3ae2596b1c2ae5b1:0x872e9262f485d782?sa=X&ved=2ahUKEwi32Iuyh_nwAhUXfisKHYMLAQsQ9RcwH3oECEwQBA";
                                        if(await canLaunch(url)){
                                          await launch(url);
                                        }else{
                                          throw "cannot load location";
                                        }
                                      }
                                  ),
                                ]
                            ))
                          ],
                        ),

                        Row(
                          children: [
                            ClipRect(

                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                // padding: const EdgeInsets.all(4.0),
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0)),
                  color: Colors.blueGrey.shade200,
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
                            color: Colors.blueGrey.shade200,
                          ),
                          child: Image.asset(
                              'images/savoy.jpg',
                              height: 500,
                              width: 200,
                              fit: BoxFit.fitWidth
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Savoy',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey.shade800,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Seats available : 40 ',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blueGrey.shade800,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [

                            RichText(text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(Icons.place_outlined, size: 25 , color: Colors.blueGrey.shade800,),
                                  ),
                                  TextSpan(
                                      style: linkText,
                                      text:"Location",
                                      recognizer: TapGestureRecognizer()..onTap = () async{
                                        var url = "https://www.google.com/maps/dir/7.1540552,80.0593752/savoy+google+maps/@6.9952674,79.8195564,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3ae25bc71061417b:0x20ffa0f7a9e8607b!2m2!1d79.8597453!2d6.8791252";
                                        if(await canLaunch(url)){
                                          await launch(url);
                                        }else{
                                          throw "cannot load location";
                                        }
                                      }
                                  ),
                                ]
                            ))
                          ],
                        ),

                        Row(
                          children: [
                            ClipRect(

                            ),
                          ],
                        ),
                      ],
                    )
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