import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BackgroundImage2.dart';

class profileMenu extends StatefulWidget{
  profileState createState() => new profileState();
}

class profileState extends State<profileMenu>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

      home:  new Scaffold(

      body:
      BackgroundImage2()

         //BackgroundImage2(),


      ),
    );
  }

}