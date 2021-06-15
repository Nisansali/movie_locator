import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_locator/interfaces/Movie_List.dart';
import 'package:movie_locator/interfaces/registration_page.dart';

import '../addMovie.dart';

class LoginPage extends StatelessWidget {

  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blueGrey.shade900,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/movie.png'),
                ),
                Text(
                  'Movie Locator',
                  style: TextStyle(
                    fontFamily: 'Pattaya',
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'LOGIN',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.blueGrey.shade200,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: TextField(
                    style: TextStyle(fontSize: 18),
                    controller: usernameController,
                    decoration: InputDecoration(
                      hintText: "username",
                      hintStyle: TextStyle(fontSize: 18, color: Colors.blueGrey.shade900),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.blueGrey,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(fontSize: 15),
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: "password",
                      hintStyle: TextStyle(fontSize: 18, color: Colors.blueGrey.shade900),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.blueGrey,
                        size: 25,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {
                      if ( usernameController.text == 'admin' && passwordController.text == 'admin') {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MovieAdd()));
                      } else if (usernameController.text == '' && passwordController.text == ''){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      } else {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MovieListScreen()));
                      }
                    },
                    child: Text('Login',
                      style: TextStyle(fontSize: 20),),
                  )
                ),
                Container(

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                      },
                      child: Text('Not a member ? Register Here',
                        style: TextStyle(fontSize: 15 , backgroundColor: Colors.transparent), ),
                    )
                ),
              ],
            )),
      ),
    );
  }
}