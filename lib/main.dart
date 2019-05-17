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
import 'BackgroundImage.dart';




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
    return MaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(

    primarySwatch: Colors.blue,

    ),

    home: BackgroundImage(),

    );
  }

//void startAudios(){
// setState(() {
//    Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Audios()));
// });
//}

}
