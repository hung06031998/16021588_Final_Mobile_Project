import 'package:cloud_firestore/cloud_firestore.dart';

class ImportData{
  void addData() {
    var firestoreInstance = Firestore.instance;
    firestoreInstance.collection("talks").add(
        {
          "name" : "The next outbreak? We’re not ready",
          "idVideo" : "6Af6b_wyiwI",
          "speakers" : "Bill Gates",
          "duration" : "8:36",
          "subtitle" : "In 2014, the world avoided a horrific global outbreak of Ebola, thanks to thousands of selfless health workers -- plus, frankly, thanks to some very good luck. In hindsight, we know what we should have done better. So, now's the time, Bill Gates suggests, to put all our good ideas into practice, from scenario planning to vaccine research to health worker training. As he says, \"There's no need to panic ... but we need to get going.\"",
          "urlImage" : "https://img.youtube.com/vi/6Af6b_wyiwI/default.jpg",
          "urlVideo" : "https://www.youtube.com/watch?v=6Af6b_wyiwI"
        }).then((value){
      print(value.documentID);
    });
  }
}