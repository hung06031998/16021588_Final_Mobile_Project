import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'InfoTab.dart';
import 'ListSocials.dart';
import 'SeeAllTopic.dart';

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
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SeeAllTopic()));
                        },
                      )
                    ],
                  ),
                ),
//                list 1
                SizedBox(
                    width: double.infinity,
                    height: 230,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        FlatButton(
                          padding: EdgeInsets.only(left: 0.0, right: 6.0),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ListSocials()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Image.network(
                                "https://assets-global.website-files.com/5b682d255fc94ca52c48fa0d/5c21aef90d5f11b1daac4e8d_Social-Media-Marketing.png",
                                fit: BoxFit.fill,
                                height: 200,
                                width: 200,
                              ),
                              Text(
                                "Socials",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.only(left: 0.0, right: 6.0),
                          onPressed: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Image.network(
                                "https://process.fs.teachablecdn.com/ADNupMnWyR7kCWRvm76Laz/resize=width:705/https://www.filepicker.io/api/file/SplIhKh9R1qWIDHmx74L",
                                fit: BoxFit.fill,
                                height: 200,
                                width: 200,
                              ),
                              Text(
                                "Speaking",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.only(left: 0.0, right: 6.0),
                          onPressed: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Image.network(
                                "https://lh3.googleusercontent.com/proxy/sqodImD37_Pz9lerx5FXYq4zF1eC7ZlF2_4uxXNcopzvjxz_1E0kC8zKCPiQ4CYTl7tY0bA0OWUJTeZq6xvDu_V4Jlk76wfMOWhrgypn48xCx95qWSWQu9ca_AylNkolC5_9Z1SVCc57dVjQXcKg51WoAgr8Mb8ZKS-4mxs72CWM",
                                fit: BoxFit.fill,
                                height: 200,
                                width: 200,
                              ),
                              Text(
                                "Thinking",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
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
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      MyCustomCard(
                          240.0,
                          240.0,
                          null,
                          false,
                          true,
                          true,
                          true,
                          "https://www.sciencenews.org/wp-content/uploads/2019/12/120719_scientistsrights_feat_opt2-1027x579.png",
                          "Science",
                          "",
                          "50:12"),
                      MyCustomCard(
                          240.0,
                          240.0,
                          null,
                          false,
                          true,
                          true,
                          true,
                          "https://d57439wlqx3vo.cloudfront.net/iblock/6cc/6ccab5f1d555f5739c9a3c7ab53c21a7/0895b691239e211a619a481eadfed209.png",
                          "Languages",
                          "",
                          "100:3"),
                      MyCustomCard(
                          240.0,
                          240.0,
                          null,
                          false,
                          true,
                          true,
                          true,
                          "https://i1.sndcdn.com/avatars-000711259471-hrqdtk-t500x500.jpg",
                          "Facts",
                          "",
                          "10:34"),
                    ],
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
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      MyCustomCard(
                          240.0,
                          240.0,
                          CircleBorder(),
                          true,
                          false,
                          false,
                          false,
                          "https://media-exp1.licdn.com/dms/image/C4E03AQEe8Vx5TtMqYg/profile-displayphoto-shrink_200_200/0?e=1596672000&v=beta&t=FbW6UxHBMpWQ1GzaMb8sxS2Q5vlCVj9qRIAH2sz-JCY",
                          "",
                          "Cella Wright",
                          ""),MyCustomCard(
                          240.0,
                          240.0,
                          CircleBorder(),
                          true,
                          false,
                          false,
                          false,
                          "https://cdn.theconversation.com/avatars/951360/width238/image-20200205-149742-xy8nq1.jpg",
                          "",
                          "Cameron Morin",
                          ""),MyCustomCard(
                          240.0,
                          240.0,
                          CircleBorder(),
                          true,
                          false,
                          false,
                          false,
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSJcU8NFYp7uXSy4yzZQZ7wP-cusyxXs2fa7A&usqp=CAU",
                          "",
                          "Brian A. Pavlac",
                          ""),MyCustomCard(
                          240.0,
                          240.0,
                          CircleBorder(),
                          true,
                          false,
                          false,
                          false,
                          "https://sydney.edu.au/images/content/cws/news/newsevents/articles/2007/may/arimain.jpg",
                          "",
                          "Sascha Morrell",
                          "")
                    ],

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
                            Text(
                              "Ted talks are translated into over 110 subtitles language",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                color: Colors.red,
                                child: Text(
                                  "ALL LANGUAGES",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
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

  MyCustomCard(
      double widthImage,
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
  _MyCustomCardState createState() => _MyCustomCardState(
      widthImage,
      heightImage,
      shapeBorder,
      isTextOuterCard,
      isTextInnerCard,
      isTextOnImage,
      isActionButton,
      urlImage,
      textInner,
      textOuter,
      textOnImage);
}

class _MyCustomCardState extends State<MyCustomCard> {
  double widthImage, heightImage;
  ShapeBorder shapeBorder;
  bool isTextOuterCard, isTextInnerCard, isTextOnImage, isActionButton;
  String textInner, textOuter, textOnImage, urlImage;

  _MyCustomCardState(
      double width,
      double height,
      ShapeBorder shapeBorder,
      bool isTextOuterCard,
      bool isTextInnerCard,
      bool isTextOnImage,
      bool isActionButton,
      String urlImage,
      String textInner,
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
                            image: NetworkImage(urlImage),
                            fit: BoxFit.cover,
                            child: Container(),
                          ),
                        ),
                        if (isTextOnImage)
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
                  if (isTextInnerCard || isActionButton)
                    Container(
                      width: widthImage,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            textInner,
                            style: Theme.of(context).textTheme.title,
                          ),
                          if (isActionButton)
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
        if (isTextOuterCard)
          Text(
            textOuter,
            style: Theme.of(context).textTheme.title,
          ),
      ],
    );
  }
}
