import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tedapp/InfoTab.dart';

class BodyOfTalksTab extends StatefulWidget {
  String state;
  BodyOfTalksTab(String state){
    this.state = state;
  }
  @override
  _BodyOfTalksTabState createState() {
    // TODO: implement createState
    return _BodyOfTalksTabState(state);
  }
}

class _BodyOfTalksTabState extends State<BodyOfTalksTab> {
  String state;
  _BodyOfTalksTabState(String state){
    this.state = state;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StreamBuilder(
      stream: Firestore.instance.collection("talks").where("state", isEqualTo: state).snapshots(),
      builder: (context, snapshot) {
        if(snapshot.hasData)
          return StaggeredGridView.countBuilder(
          mainAxisSpacing: 1.0,
          crossAxisSpacing: 1.0,
          crossAxisCount: 4,
          itemCount: snapshot.data.documents.length,
          staggeredTileBuilder: (index) {
            return StaggeredTile.count(index == 0 ? 4 : 2, index == 0 ? 2 : 1);
          },
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => InfoTab(snapshot.data.documents[index])));
              },
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(snapshot.data.documents[index]["urlImage"]),
                          fit: BoxFit.cover,
                          alignment: Alignment.center
                      )
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(6.0, 6.0, 0.0, 6.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                color: Colors.black12,
                                  child: Text(snapshot.data.documents[index]["speakers"], textAlign: TextAlign.left, style: TextStyle(color: Colors.white))),
                              Container(
                                color: Colors.black12,
                                  child: Text(snapshot.data.documents[index]["name"], textAlign: TextAlign.left, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            GestureDetector(
                              child: Icon(Icons.more_vert, color: Colors.white,),
                              onTap: (){},
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 6.0, right: 6.0, top: 6.0),
                              child: Text(snapshot.data.documents[index]["duration"], style: TextStyle(color: Colors.white),),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
        return CircularProgressIndicator();
      },
    );
  }
}
