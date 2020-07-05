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
  double _paddingLeft = 6.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 70.0, left: 6.0),
            child: ListView(
              children: <Widget>[
//                title 1
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Topics",
                        style: Theme.of(context).textTheme.title,
                      ),
                      FlatButton(
                        child: Text(
                          "See all",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
//                list 1
                SizedBox(
                  width: double.infinity,
                  height: 230,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return FlatButton(
                        padding: EdgeInsets.only(left: 0.0, right: 6.0),
                        onPressed: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Image.asset(
                              "images/test.jpg",
                              fit: BoxFit.fitWidth,
                              height: 200,
                              width: 200,
                            ),
                            Text(
                              "Anh" + index.toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
//                title 2
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Playlists",
                        style: Theme.of(context).textTheme.title,
                      ),
                      FlatButton(
                        child: Text(
                          "See all",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
//                list 2
                SizedBox(
                  width: double.infinity,
                  height: 300.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return MyCustomCard(240.0, 240.0, null, false, true, true, true, "https://storage.oxii.vn/Cache/Sites/OXII/Storage/Images/2019/2/26/1920/hot-girl-waralee-ngot-hon-duong-trong-bo-anh-sun-set-anh-1_640_435_721.jpg", "Mo ta", "", "50:12");
                    },
                  ),
                ),
//                title 3
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Speakers",
                        style: Theme.of(context).textTheme.title,
                      ),
                      FlatButton(
                        child: Text(
                          "See all",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
//                list 3
                SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return MyCustomCard(240.0, 240.0, CircleBorder(), true, false, false, false, "https://storage.oxii.vn/Cache/Sites/OXII/Storage/Images/2019/2/26/1920/hot-girl-waralee-ngot-hon-duong-trong-bo-anh-sun-set-anh-1_640_435_721.jpg", "", "Speaker", "");
                    },
                  ),
                ),
//                title 4
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Speakers",
                        style: Theme.of(context).textTheme.title,
                      ),
                    ],
                  ),
                ),
//                list 4
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Center(
                    child: Container(
                      width: 280,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Ted talks are translated into over 110 subtitles language", style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              color: Colors.red,
                              child: Text("ALL LANGUAGES", style: TextStyle(color: Colors.white),),
                              onPressed: (){},
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
              ],
            ),
          ),
//          app bar
          Positioned(
            top: _paddingLeft,
            right: _paddingLeft,
            left: _paddingLeft,
            height: kToolbarHeight - _paddingLeft,
            child: AppBar(
              backgroundColor: Colors.white,
              leading: FlatButton(
                color: Colors.white,
                onPressed: () {},
                child: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              title: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Search TED"),
              ),
            ),
          ),
//          action button on app bar
          Positioned(
            top: _paddingLeft / 2 + 1,
            right: 0.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  width: 24,
                  child: IconButton(
                    padding: EdgeInsets.only(right: 5.0),
                    icon: Icon(
                      Icons.keyboard_voice,
                      color: Colors.grey,
                    ),
//                    color: Colors.blue,
                    onPressed: () {},
                  ),
                ),
                Container(
//                  color: Colors.yellow,
                  child: PopupMenuButton(
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.grey,
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
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyCustomCard extends StatefulWidget {
  double widthImage, heightImage;
  ShapeBorder shapeBorder;
  bool isTextOuterCard, isTextInnerCard, isTextOnImage, isActionButton;
  String textInner, textOuter, textOnImage, urlImage;

  MyCustomCard(double widthImage,
                double heightImage,
                ShapeBorder shapeBorder,
                bool isTextOuterCard,
                bool isTextInnerCard,
                bool isTextOnImage,
                bool isActionButton,
                String urlImage,
                String textInner,
                String textOuter,
                String textOnImage) {
    this.widthImage = widthImage;
    this.heightImage = heightImage;
    this.shapeBorder = shapeBorder;
    this.isTextOuterCard = isTextOuterCard;
    this.isTextInnerCard = isTextInnerCard;
    this.isTextOnImage = isTextOnImage;
    this.isActionButton = isActionButton;
    this.textInner = textInner;
    this.textOuter = textOuter;
    this.textOnImage = textOnImage;
    this.urlImage = urlImage;

  }

  @override
  _MyCustomCardState createState() => _MyCustomCardState(widthImage, heightImage, shapeBorder, isTextOuterCard, isTextInnerCard, isTextOnImage, isActionButton, urlImage, textInner, textOuter, textOnImage);
}

class _MyCustomCardState extends State<MyCustomCard> {
  double widthImage, heightImage;
  ShapeBorder shapeBorder;
  bool isTextOuterCard, isTextInnerCard, isTextOnImage, isActionButton;
  String textInner, textOuter, textOnImage, urlImage;

  _MyCustomCardState(double width, double height, ShapeBorder shapeBorder, bool isTextOuterCard, bool isTextInnerCard, bool isTextOnImage, bool isActionButton, String urlImage, String textInner,
      String textOuter,
      String textOnImage) {
    this.widthImage = width;
    this.heightImage = height;
    this.shapeBorder = shapeBorder;
    this.isTextOuterCard = isTextOuterCard;
    this.isTextInnerCard = isTextInnerCard;
    this.isTextOnImage = isTextOnImage;
    this.isActionButton = isActionButton;
    this.textInner = textInner;
    this.textOuter = textOuter;
    this.textOnImage = textOnImage;
    this.urlImage = urlImage;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(

          child: Card(
            shape: shapeBorder,
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                print('Card was tapped');
              },
              // Generally, material cards use onSurface with 12% opacity for the pressed state.
              splashColor:
                  Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
              // Generally, material cards do not have a highlight overlay.
              highlightColor: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Photo
                  SizedBox(
                    width: widthImage,
                    height: heightImage,
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Ink.image(
                            image: NetworkImage(
                                urlImage),
                            fit: BoxFit.cover,
                            child: Container(),
                          ),
                        ),
                        if(isTextOnImage)
                          Positioned(
                            bottom: 10.0,
                            right: 10.0,
                            child: Container(
                              color: Colors.black12,
                              child: Text(
                                textOnImage,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
//                    title and action
                  if(isTextInnerCard || isActionButton)
                    Container(
                      width: widthImage,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(textInner, style: Theme.of(context).textTheme.title,
                          ),
                          if(isActionButton)
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_vert),
                            )
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
        if(isTextOuterCard)
          Text(textOuter, style: Theme.of(context).textTheme.title,),
      ],
    );
  }
}
