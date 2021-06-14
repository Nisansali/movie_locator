import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import './models/movie.dart';

void main() => runApp(MovieAdd());

class MovieAdd extends StatelessWidget {
  const MovieAdd({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'test',
      home: MovieFirebaseDemo(),
    );

  }
}

class MovieFirebaseDemo extends StatefulWidget {

  MovieFirebaseDemo() : super();
  final String appTitle = "Movie Locator";

  @override
  _MovieFirebaseDemoState createState() => _MovieFirebaseDemoState();
}

class _MovieFirebaseDemoState extends State<MovieFirebaseDemo> {

  TextEditingController movieNameController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  bool isEditing = false;
  bool textFieldVisibility = false;

  String firestoreCollectionName = "Movies";

  Movie currentMovie;

  getAllMovies() {
    return Firestore.instance.collection(firestoreCollectionName).snapshots();
  }

  addMovie() async {
    Movie movie = Movie(
        movieName: movieNameController.text, location: locationController.text);
    try {
      Firestore.instance.runTransaction(
              (Transaction transaction) async {
            await Firestore.instance
                .collection(firestoreCollectionName)
                .document()
                .setData(movie.toJson());
          }
      );
    } catch (e) {
      print(e.toString());
    }
  }

  updateMovie(Movie movie, String movieName, String location) {
    try {
      Firestore.instance.runTransaction((transaction) async {
        await transaction.update(movie.documentReference,
            {'movieName': movieName, 'location': location});
      });
    } catch (e) {
      print(e.toString());
    }
  }

  updateIfEditing() {
    if (isEditing) {
      updateMovie(
          currentMovie, movieNameController.text, locationController.text);

      setState(() {
        isEditing = false;
      });
    }
  }


  deleteMovie(Movie movie) {
    Firestore.instance.runTransaction((Transaction transaction) async {
      await transaction.delete(movie.documentReference);
    }
    );
  }

  Widget buildBody(BuildContext context){

      return StreamBuilder <QuerySnapshot>(
        stream: getAllMovies(),
        builder: (context,snapshot){
          if(snapshot.hasError){
            return Text('Error ${snapshot.error}');
          }
          if(snapshot.hasData){
            print("Documents -> ${snapshot.data.documents.length}");
            return buildList(context, snapshot.data.documents);
          }
          return Center(child: CircularProgressIndicator());
        },
      );
    }

    Widget buildList(BuildContext context, List<DocumentSnapshot> snapshot){
      return ListView(
          children: snapshot.map((data) => listItemBuild(context,data)).toList(),
      );
  }

  Widget listItemBuild(BuildContext context, DocumentSnapshot data){
    final movie  = Movie.fromSnapshot(data);

    return Padding(
      key:ValueKey(movie.movieName),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 2),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(4)
        ),
        child: SingleChildScrollView(
          child: ListTile(
            title: Column(
              children: <Widget>[
                Row(
                children:<Widget>[
                  Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 2),),
                  Icon(Icons.movie, color: Colors.blueAccent,),
                  Text(movie.movieName)
              ],
            ),
                Divider(),
                Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 2),),
                    Icon(Icons.place_outlined, color: Colors.amberAccent,),
                    Text(movie.location)
                  ],
                ),
          ],
        ),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.redAccent,),
              onPressed: (){
                deleteMovie(movie);
              },
            ),
            onTap: (){
              setUpdateUI(movie);
            },
      ),
    ),
      ),
    );
  }

  setUpdateUI(Movie movie){

    movieNameController.text = movie.movieName;
    locationController.text = movie.location;

    setState(() {
      textFieldVisibility= true;
      isEditing = true;
      currentMovie = movie;
    });
  }

  button(){
    return SizedBox(
        width: double.infinity,

        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
          ),
          child: Text(isEditing ? "UPDATE" : "ADD",style: TextStyle(
            color: Colors.white,
          ),),
          onPressed: (){
            if(isEditing == true){
              updateIfEditing();
              movieNameController.text = "";
              locationController.text = "";
            }else{
              addMovie();
              movieNameController.text = "";
              locationController.text = "";
            }

            setState(() {
              textFieldVisibility = false;
            });
          },
        ),
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      resizeToAvoidBottomInset: false,

      appBar: AppBar(
          backgroundColor: Colors.indigo,

        title: Text(widget.appTitle),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: (){
                setState(() {
                  textFieldVisibility = !textFieldVisibility;
                });
              })
        ]
      ),
      body:Container(
        padding: EdgeInsets.all(19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            textFieldVisibility
            ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: [
                    TextField(
                      controller: movieNameController,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: "Movie name",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.blueGrey.shade900),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.movie,
                          color: Colors.blueGrey,
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: locationController,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: "Location",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.blueGrey.shade900),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.place,
                          color: Colors.blueGrey,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                button()
              ],

            ): Container(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Movies',
              style: TextStyle(
                fontFamily: 'Pattaya',
                fontSize: 35,
                color: Colors.indigo,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(child: buildBody(context))

          ],
        ),
      ),
    );
  }
}
