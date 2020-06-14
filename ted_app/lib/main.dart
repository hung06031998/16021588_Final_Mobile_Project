import 'package:flutter/material.dart';
import 'package:tedapp/DiscoverTab.dart';
import 'package:tedapp/HeaderInfo.dart';
import 'package:tedapp/MyTEDTab.dart';
import 'package:tedapp/PodcastTab.dart';
import 'package:tedapp/TalksTab.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<MyApp> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 10.0,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.video_library),
                title: Center(child: Text("Talks")),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("Discover"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.headset),
                title: Text("Podcasts"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text("My TED"),
              ),
            ],
          ),
          body: IndexedStack(
            children: <Widget>[
              TalksTab(),
              DiscoverTab(),
              PodcastTab(),
//              HeaderInfo(),
            MyTEDTab(),
            ],
            index: _currentIndex,
          )),
    );
  }
}
