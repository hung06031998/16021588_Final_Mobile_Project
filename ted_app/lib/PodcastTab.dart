import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PodcastTab extends StatefulWidget {
  @override
  _PodcastTabState createState() {
    // TODO: implement createState
    return _PodcastTabState();
  }
}

class _PodcastTabState extends State<PodcastTab> {
  List listItemMenu = ["Settings", "Privacy policy", "Feedback", "Log out"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return NestedScrollView(
        headerSliverBuilder: (context, isInnerBoxIsScrolled) {
          return [
            SliverAppBar(
              forceElevated: true,
              backgroundColor: Colors.white,
              title: Text(
                "Podcasts",
                style: DefaultTextStyle.of(context)
                    .style
                    .apply(fontSizeFactor: 1.5, color: Colors.red),
              ),
              actions: <Widget>[
                PopupMenuButton(
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
                )
              ],
            )
          ];
        },
        body: ListView(
          children: <Widget>[
            Card(
              child: Image.network("https://cdn.waves8.com/wp-content/uploads/2020/03/nam-nghe-doc-truyen-1.jpeg"),
            ),Card(
              child: Image.network("https://cdn.waves8.com/wp-content/uploads/2020/04/15105634/doc-sach-voi-nv-linh-waves-2.jpg"),
            ),Card(
              child: Image.network("https://cdn.waves8.com/wp-content/uploads/2020/03/kho-sach-noi-waves-1.jpeg"),
            ),Card(
              child: Image.network("https://cdn.waves8.com/wp-content/uploads/2020/03/episode-5.png"),
            ),
          ],
        ));
  }
}
