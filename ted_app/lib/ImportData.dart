import 'package:cloud_firestore/cloud_firestore.dart';

class ImportData{
  void addData() {
    var firestoreInstance = Firestore.instance;
    firestoreInstance.collection("talks").add(
        {
          "name" : "Why elephants never forget",
          "idVideo" : "lSXNqsOoURg",
          "speakers" : "Alex Gendler",
          "duration" : "5:22",
          "state" : "Most_viewed",
          "subtitle" : "It’s a common saying that elephants never forget. But the more we learn about elephants, the more it appears that their impressive memory is only one aspect of an incredible intelligence that makes them some of the most social, creative, and benevolent creatures on Earth. Alex Gendler takes us into the incredible, unforgettable mind of an elephant.",
          "urlImage" : "https://img.youtube.com/vi/lSXNqsOoURg/maxresdefault.jpg",
          "urlVideo" : "https://www.youtube.com/watch?v=lSXNqsOoURg"
        }).then((value){
      print(value.documentID);
    });
  }
}