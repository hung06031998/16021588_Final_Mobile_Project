import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerTab extends StatefulWidget{
  var data;
  VideoPlayerTab(data){
    this.data = data;
  }

  @override
  _VideoPlayerTabState createState() {
    // TODO: implement createState
    return _VideoPlayerTabState(data);
  }
}

class _VideoPlayerTabState extends State<VideoPlayerTab>{
  YoutubePlayerController _controllerYoutube;
  var data;

  _VideoPlayerTabState(data){
    this.data = data;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controllerYoutube = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(data['urlVideo'],
        )
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controllerYoutube.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(data['name']),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: YoutubePlayer(
          controller: _controllerYoutube,

        ),
      ),
    );
  }
}