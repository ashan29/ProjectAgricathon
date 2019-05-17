import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BackgroundImage.dart';

class welcome extends StatefulWidget{
  welcomeState createState() => new welcomeState();
}

class welcomeState extends State<welcome>{
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

}