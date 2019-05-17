import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vip/profileMenu.dart';
import 'package:vip/test.dart';
import 'package:vip/welcome.dart';


import './scan.dart';
import './gerit.dart';
import './geritImages.dart';
import './test.dart';

import './player.dart';
import './wall.dart';
import './myapp.dart';




void main() {

  runApp(new MaterialApp(
    home: new GoReviz(),
    debugShowCheckedModeBanner : false,

    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/main': (context) => GoReviz(),
      '/gerit': (BuildContext context) => new Gerit(),
      '/scan': (BuildContext context) => new Scan(),
      '/test': (BuildContext context) => new Test(),
      '/geritImages': (BuildContext context) => new Test(),
      '/welcome': (BuildContext context) => new welcome(),
      '/profileMenu': (BuildContext context) => new profileMenu(),

      '/player': (BuildContext context) => new PlayerC(),
      '/wall': (BuildContext context) => new Wall(),
      '/myapp': (BuildContext context) => new Intro(),

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
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                        new welcome())
                    );
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
