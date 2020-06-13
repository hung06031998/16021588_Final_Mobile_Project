import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tedapp/ImportData.dart';

class TalksTab extends StatefulWidget {
  @override
  _TalksTabState createState() {
    // TODO: implement createState
    return _TalksTabState();
  }
}

class _TalksTabState extends State<TalksTab> {
  final _tabs = ["Newest", "Trending", "Most viewed"];
  List listItemMenu = ["Settings", "Privacy policy", "Feedback", "Log out"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: _tabs.length,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: true,
                floating: true,
                forceElevated: true,
                backgroundColor: Colors.white,
                title: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "TED ",
                          style: DefaultTextStyle.of(context).style.apply(
                              color: Colors.red,
                              fontWeightDelta: 5,
                              fontSizeFactor: 2.0)),
                      TextSpan(
                          text: "Talks",
                          style: DefaultTextStyle.of(context)
                              .style
                              .apply(color: Colors.red, fontSizeFactor: 2.0)),
                    ]),
                  ),
                ),
                actions: <Widget>[
                  PopupMenuButton(
                    icon: Icon(Icons.more_vert, color: Colors.grey,),
                    elevation: 8.0,
                    onCanceled: () => print("cancle"),
                    onSelected: (item) => ImportData().addData(),
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
                bottom: TabBar(
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.grey,
                  // These are the widgets to put in each tab in the tab bar.
                  tabs: _tabs.map((String name) => Tab(text: name)).toList(),
                ),
              ),
            ];
          },
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              ListView.builder(itemBuilder: (context, index) {
                return Card(
                  child: Text("aaaaa"),
//                  child: Image.asset('images/test.jpg'),
                );
              }),
              ListView.builder(itemBuilder: (context, index) {
                return Card(
                  child: Text("bbbbb"),
//                  child: Image.asset("images/test2.png"),
                );
              }),
              ListView.builder(itemBuilder: (context, index) {
                return Card(
                  child: Text("ccccc"),
//                  child: Image.asset("images/test3.jpg"),
                );
              })
            ],
          ),
        ));
  }
}
