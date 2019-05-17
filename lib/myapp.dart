import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import './main.dart';
class Intro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new IState();
  }
}

class IState extends State<Intro> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://s3-eu-west-1.amazonaws.com/notrehistoire.ch/videos/7105452a465f9829.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(

          body: new Padding(
            padding: const EdgeInsets.all(20),
            child: new SingleChildScrollView(
              child: new Column(
                children: <Widget>[
                  new Padding(padding: EdgeInsets.all(15.0)),

                  new Container(
                    alignment: Alignment.center,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text(
                          "Pierre",

                          style: new TextStyle(fontSize: 26.0),
                        ),
                      ],
                    ),
                  ),

                  //image
                  new Padding(padding: EdgeInsets.all(15.0)),
                  new Text(

                      "Voici ci-dessous une vidéo explicative sur la construction des murs en pierres sèches. Bonne lecture !",
                    style: new TextStyle(fontSize: 20.0)),


                  new Padding(padding: EdgeInsets.all(20.0)),
                  new Center(
                    child: _controller.
                    value.initialized
                        ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                        : Container(),

                  ),
                  new Padding(padding: EdgeInsets.all(8.0)),

            new FloatingActionButton(
              onPressed: () {
                setState(() {
                  _controller.value.isPlaying
                      ? _controller.pause()
                      : _controller.play();
                });
              },
              child: Icon(
                _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
              ),
            ),

                  new MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/');
                    },
                    child: new Text(
                      "Aller Home",
                      style: new TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ));
  }
}