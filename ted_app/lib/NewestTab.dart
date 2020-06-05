import 'package:flutter/material.dart';

class NewestTab extends StatefulWidget{
  @override
  _TalksTabBodyState createState() {
    // TODO: implement createState
    return _TalksTabBodyState();
  }
}

class _TalksTabBodyState extends State<NewestTab> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 500.0,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 4.0,
      ),
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Card(
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
              )
          );
        },
        childCount: 100,
      ),
    );
  }
}