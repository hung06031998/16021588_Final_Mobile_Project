import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscoverTab extends StatefulWidget {
  @override
  _DiscoverTabState createState() {
    // TODO: implement createState
    return _DiscoverTabState();
  }
}

class _DiscoverTabState extends State<DiscoverTab> {
  List listItemMenu = ["Settings", "Privacy policy", "Feedback", "Log out"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrooled) {
        return <Widget>[
          SliverAppBar(
            forceElevated: true,
            floating: true,
            backgroundColor: Colors.blue,
            title: Container(
              color: Colors.white,
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(3.2)))
                ),
              ),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: null,
                icon: Icon(Icons.mic),
              ),
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
          ),
        ];
      },
      body: ListView(
        children: <Widget>[
          ListTile(title: Text("Row 111"),),
          SizedBox(
            width: double.infinity,
            height: 400,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index){
                return Card(
                  child: Image.asset("images/test.jpg"),
                );
            },),
          ),
          ListTile(title: Text("Row 222"),),
          SizedBox(
          height: 400,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index){
                return Card(
                  child: Image.asset("images/test2.png"),
                );
            },),
          ),
          ListTile(title: Text("Row 333"),),
          SizedBox(
            width: double.infinity,
            height: 400,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index){
                return Card(
                  child: Image.asset("images/test3.jpg"),
                );
            },),
          ),

        ],
      )
    );
  }
}
