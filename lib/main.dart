import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


import './scan.dart';

import './player.dart';


void main() {

  runApp(new MaterialApp(
    home: new GoReviz(),
    debugShowCheckedModeBanner : false,

    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/main': (context) => GoReviz(),
      '/scans': (BuildContext context) => new Scan(),

      '/player': (BuildContext context) => new PlayerC(),

    },
  ));
}

class GoReviz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new GoRevizState();
  }
}

class GoRevizState extends State<GoReviz> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Oenotourisme"),
        backgroundColor: Colors.cyan,
        automaticallyImplyLeading: false,

      ),
      body: new Padding(
        padding: const EdgeInsets.all(20),

        child: new SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(),
              Image(
                image: AssetImage("assets/image/VIP_Logo_1.jpg"),
              ),
              new Padding(padding: EdgeInsets.all(8.0)),
              new Text("      Jouer pour réviser"),
              new Padding(padding: EdgeInsets.all(8.0)),
              new MaterialButton(
                  height: 50.0,
                  color: Colors.green,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/scans');
                  },
                  child: new Text(
                    "Go Scan",
                    style: new TextStyle(fontSize: 18, color: Colors.white),
                  )),

              new Text(
                  "Application réalisée dans le cours VIP du master Maltt par Kim, Marianna, Emilie et Loïc"),
            ],
          ),
        ),
      ),
    );
  }

//void startAudios(){
// setState(() {
//    Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Audios()));
// });
//}

}
