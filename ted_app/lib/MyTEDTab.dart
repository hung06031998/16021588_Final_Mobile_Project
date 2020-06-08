import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTEDTab extends StatefulWidget {
  @override
  _MyTEDTabState createState() {
    // TODO: implement createState
    return _MyTEDTabState();
  }
}

class _MyTEDTabState extends State<MyTEDTab>{
  List listItemMenu = ["Settings", "Privacy policy", "Feedback", "Log out"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return NestedScrollView(
      headerSliverBuilder: (context, isInnerBoxIsScrolled){
        return [
          SliverAppBar(
            forceElevated: true,
            backgroundColor: Colors.white,
            title: Text("My TED", style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.5, color: Colors.red),),
            actions: <Widget>[
              PopupMenuButton(
                icon: Icon(Icons.more_vert, color: Colors.grey,),
                elevation: 8.0,
                onCanceled: () => print("cancle"),
                onSelected: (item) => print(item),
                itemBuilder: (context){
                  return listItemMenu.map((item){
                    return PopupMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList();
                },
              )
            ],
          )
        ];
      },
      body: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: ListTile(
              title: Text("Hùng Nguyễn Việt", style: TextStyle(fontWeight: FontWeight.bold),),
              leading: Icon(Icons.account_circle, color: Colors.red,),
            ),
          ),
          ListTile(
            leading: Icon(Icons.playlist_play, color: Colors.red,),
            title: Text("My List"),
            subtitle: Text("No talks"),
          ),
          ListTile(
            leading: Icon(Icons.favorite_border, color: Colors.red,),
            title: Text("Likes"),
            subtitle: Text("No talks"),
          ),
          ListTile(
            leading: Icon(Icons.file_download, color: Colors.red,),
            title: Text("Downloads"),
            subtitle: Text("No talks"),
          ),
          ListTile(
            leading: Icon(Icons.history, color: Colors.red,),
            title: Text("History"),
            subtitle: Text("7 talks"),
          ),
        ],
      )
    );
  }
}