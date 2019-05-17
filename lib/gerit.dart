import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './main.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

import './geritInfos.dart';
import 'geritImages.dart';
import './myapp.dart';


class Gerit extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<Gerit> {

  //final Color test = HexCo
  final color = const Color(0xAD1F45);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      home: new DefaultTabController(length: 2, child:  new Scaffold(
        appBar: new AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Info"),
              Tab(text: "Video Demo")
            ],
          ),
          title: new Text('Guérites'),
          backgroundColor: Color.fromRGBO(173, 31, 69, 1),

        ),
        body: new TabBarView(
            children: [
              new GeritInfos(),
              new Intro()
          ]
        )
        )
      )
    );
  }

}