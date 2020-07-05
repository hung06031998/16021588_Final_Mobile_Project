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
      body: ListView(
        children: <Widget>[
          YoutubePlayer(controller: _controllerYoutube,),
          Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                title: Text(
                  "Watch next",
                  style: Theme.of(context).textTheme.title,
                ),
              )),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image.network(
            "https://img.youtube.com/vi/RQW3zC5QaY4/maxresdefault.jpg",
            fit: BoxFit.fill,
          ),
          title: Text("What do all languages have in common?"),
          subtitle: Text(
            "Cameron Morin",
          ),
          trailing: IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: null,
          ),
        ),
      ),Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image.network(
            "https://img.youtube.com/vi/NVd8kuufBhM/maxresdefault.jpg",
            fit: BoxFit.fill,
          ),
          title: Text("What really happened during the Salem Witch Trials"),
          subtitle: Text(
            "Brian A. Pavlac",
          ),
          trailing: IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: null,
          ),
        ),
      ),Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image.network(
            "https://img.youtube.com/vi/mmoFxVqZ9z4/maxresdefault.jpg",
            fit: BoxFit.fill,
          ),
          title: Text("Why should you read “Moby Dick”?"),
          subtitle: Text(
            "Sascha Morrell",
          ),
          trailing: IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: null,
          ),
        ),
      ),
        ],
      ),
    );
  }
}