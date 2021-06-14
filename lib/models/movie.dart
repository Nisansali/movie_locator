import 'package:cloud_firestore/cloud_firestore.dart';

class Movie{
  String movieName;
  String location;

  DocumentReference documentReference;

  Movie({this.movieName, this.location});
  Movie.fromMap(Map<String,dynamic> map, {this.documentReference}){
    movieName = map["movieName"];
    location = map["location"];
  }

  Movie.fromSnapshot(DocumentSnapshot snapshot)
  :this.fromMap(snapshot.data, documentReference:snapshot.reference);

  toJson(){
    return{'movieName': movieName, 'location' : location};
  }
}