import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TalksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "TED ",
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.w900)),
              TextSpan(
                  text: "Talks",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w600))
            ]),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: null,
            )
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.red,
            tabs: <Widget>[
              Tab(
                text: "Newest",
              ),
              Tab(
                text: "Trending",
              ),
              Tab(
                text: "Most viewed",
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            TalksBody(),
            TalksBody(),
            TalksBody(),
          ],
        ),
      ),
    );
  }
}

class TalksBody extends StatefulWidget {
  @override
  _TalksBodyState createState() {
    // TODO: implement createState
    return _TalksBodyState();
  }
}

class _TalksBodyState extends State<TalksBody> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
          padding: EdgeInsets.all(5.0),
          child: Card(
              child: Stack(
            children: <Widget>[
              Image.asset(
                "images/test.jpg",
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
          )));
    });
  }
}
