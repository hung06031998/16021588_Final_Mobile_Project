import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tedapp/MostViewedTab.dart';
import 'package:tedapp/NewestTab.dart';
import 'package:tedapp/TrendingTab.dart';

class TalksTab extends StatefulWidget {
  @override
  _TalksTabState createState() {
    // TODO: implement createState
    return _TalksTabState();
  }
}

class _TalksTabState extends State<TalksTab>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _indexOfTab;
  Widget _contextOfTab;
  final _tabs = ["Newest", "Trending", "Most viewed"];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _indexOfTab = 0;
    _contextOfTab = SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 500.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 4.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Card(
              child: Stack(
            children: <Widget>[
              Image.asset(
                "images/test3.jpg",
                fit: BoxFit.scaleDown,
              ),
              ListTile(
                  title: RichText(
                    text: TextSpan(children: [
                      TextSpan(text: "Nguyen Viet Hung\n"),
                      TextSpan(
                          text: "Phat trien ung dung flutter 1 cach hoan hao",
                          style: TextStyle(fontWeight: FontWeight.w700))
                    ]),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: null,
                  )),
            ],
          ));
        },
        childCount: 20,
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    _indexOfTab = 0;
    _contextOfTab = SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 500.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 4.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Card(
              child: Stack(
            children: <Widget>[
              Image.asset(
                "images/test3.jpg",
                fit: BoxFit.scaleDown,
              ),
              ListTile(
                  title: RichText(
                    text: TextSpan(children: [
                      TextSpan(text: "Nguyen Viet Hung\n"),
                      TextSpan(
                          text: "Phat trien ung dung flutter 1 cach hoan hao",
                          style: TextStyle(fontWeight: FontWeight.w700))
                    ]),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: null,
                  )),
            ],
          ));
        },
        childCount: 20,
      ),
    );
    super.dispose();
  }

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
                snap: false,
                backgroundColor: Colors.white,
                title: Padding(
                  padding: EdgeInsets.all(1.0),
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
                floating: true,
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
                  child: Image.asset('images/test.jpg'),
                );
              }),
              ListView.builder(itemBuilder: (context, index) {
                return Card(
                  child: Image.asset("images/test2.png"),
                );
              }),
              ListView.builder(itemBuilder: (context, index) {
                return Card(
                  child: Image.asset("images/test3.jpg"),
                );
              })
            ],
          ),
        ));
  }
}
