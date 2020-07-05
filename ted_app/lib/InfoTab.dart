import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InfoTab extends StatefulWidget {
  var data;

  InfoTab(data) {
    this.data = data;
  }

  @override
  _InfoTabState createState() {
    // TODO: implement createState
    return _InfoTabState(data);
  }
}

class _InfoTabState extends State<InfoTab> with SingleTickerProviderStateMixin {
  List listItemMenu = ["Settings", "Privacy policy", "Feedback", "Log out"];
  double _imageHeight, _scrollHeight;
  AnimationController _animationController;
  Animation _colorTween;
  var data;

  _InfoTabState(data) {
    this.data = data;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _colorTween = ColorTween(begin: Colors.transparent, end: Colors.red)
        .animate(_animationController);
  }

  bool _scrollListener(ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _animationController.animateTo(scrollInfo.metrics.pixels / _scrollHeight);
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    _imageHeight = MediaQuery.of(context).size.height / 3;
    _scrollHeight = MediaQuery.of(context).size.height / 10;
    // TODO: implement build
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: _scrollListener,
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  if (index == 0)
                    return Column(
                      children: <Widget>[
//                Stack Header
                        Stack(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  height: _imageHeight,
                                  width: double.infinity,
                                  color: Colors.green,
                                  child: Image.network(
                                    data["urlImage"],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: ListTile(
                                    title: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            data["speakers"],
                                            style: Theme.of(context)
                                                .textTheme
                                                .body1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Text(
                                              data["name"],
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style
                                                      .apply(
                                                          fontWeightDelta: 8,
                                                          fontSizeFactor: 1.7)),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text(data["duration"]),
                                            FlatButton.icon(
                                                onPressed: null,
                                                icon: Icon(Icons.volume_up),
                                                label: Text(
                                                  "Listen",
                                                  style: TextStyle(
                                                      color: Colors.red),
                                                ))
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            IconButton(
                                              padding:
                                                  EdgeInsets.only(left: 0.0),
                                              icon: Icon(Icons.playlist_add),
                                              alignment: Alignment.topLeft,
                                              onPressed: null,
                                            ),
                                            IconButton(
                                              padding:
                                                  EdgeInsets.only(left: 0.0),
                                              alignment: Alignment.topLeft,
                                              icon: Icon(Icons.favorite),
                                              onPressed: null,
                                            ),
                                            IconButton(
                                              padding:
                                                  EdgeInsets.only(left: 0.0),
                                              alignment: Alignment.topLeft,
                                              icon: Icon(Icons.file_download),
                                              onPressed: null,
                                            ),
                                            IconButton(
                                              padding:
                                                  EdgeInsets.only(left: 0.0),
                                              alignment: Alignment.topLeft,
                                              icon: Icon(Icons.share),
                                              onPressed: null,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    subtitle: Text(
                                      data["subtitle"],
                                      style: Theme.of(context).textTheme.body1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: _imageHeight - 30,
                              right: 30,
                              child: FlatButton(
                                shape: CircleBorder(),
                                color: Colors.red,
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                  size: 60.0,
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                        Divider(),
//                Speaker
                        Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: ListTile(
                              title: Text(
                                "About the speakers",
                                style: Theme.of(context).textTheme.title,
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: ListTile(
                              subtitle: Text(
                                "\nDâm đãng, quyến rũ",
                                style: Theme.of(context).textTheme.body1,
                              ),
                              leading:
                                  LayoutBuilder(builder: (context, contran) {
                                return Container(
                                  width: contran.biggest.height,
                                  height: contran.biggest.height,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage("images/test.jpg"),
                                          fit: BoxFit.fill)),
                                );
                              }),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Vợ 1",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    "Ha Noi, VietNam",
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                ],
                              ),
                            )),
                        Text("\n"),
                        Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: ListTile(
                              subtitle: Text(
                                "\nTrẻ trung, nuột nà",
                                style: Theme.of(context).textTheme.body1,
                              ),
                              leading:
                                  LayoutBuilder(builder: (context, contran) {
                                return Container(
                                  width: contran.biggest.height,
                                  height: contran.biggest.height,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage("images/test2.png"),
                                          fit: BoxFit.fill)),
                                );
                              }),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Vợ 2",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    "Ha Noi, VietNam",
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                ],
                              ),
                            )),
                        Text("\n"),
                        Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: ListTile(
                              subtitle: Text(
                                "\nNgọt nước",
                                style: Theme.of(context).textTheme.body1,
                              ),
                              leading:
                                  LayoutBuilder(builder: (context, contran) {
                                return Container(
                                  width: contran.biggest.height,
                                  height: contran.biggest.height,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage("images/test3.jpg"),
                                          fit: BoxFit.fill)),
                                );
                              }),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Vợ 3",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    "Ha Noi, Vietnam",
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                ],
                              ),
                            )),
                        Divider(),
//                Watch next
                        Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: ListTile(
                              title: Text(
                                "Watch next",
                                style: Theme.of(context).textTheme.title,
                              ),
                            )),
                      ],
                    );
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Image.network(
                        "https://scontent.fhan2-6.fna.fbcdn.net/v/t1.0-9/102417105_1357568627965087_3973567114239247271_n.jpg?_nc_cat=108&_nc_sid=ca434c&_nc_ohc=GNGjGAQje1AAX-0fff8&_nc_ht=scontent.fhan2-6.fna&oh=e09c1a693c2c67b209ae33a82aaa73b3&oe=5F05C134",
                        fit: BoxFit.fill,
                      ),
                      title: Text("Tên video"),
                      subtitle: Text(
                        "Tên speaker",
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: null,
                      ),
                    ),
                  );
                },
              ),

//          appBar
              Container(
                height: kToolbarHeight,
                child: AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) => AppBar(
                    backgroundColor: _colorTween.value,
                    actions: <Widget>[
                      PopupMenuButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        elevation: 8.0,
                        onCanceled: () => print("cancle"),
                        onSelected: (item) => print(item),
                        itemBuilder: (context) {
                          return listItemMenu.map((item) {
                            return PopupMenuItem(
                              value: item,
                              child: Text(item),
                            );
                          }).toList();
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
