import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ListSocials.dart';

class SeeAllTopic extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Topic"),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Speaking"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ListSocials()));
            },
          ),ListTile(
            title: Text("Socials"),
            onTap: (){
            },
          ),ListTile(
            title: Text("Listenning"),
            onTap: (){
            },
          ),ListTile(
            title: Text("Facts"),
            onTap: (){
            },
          ),ListTile(
            title: Text("Language"),
            onTap: (){
            },
          )
        ],
      ),
    );
  }
}