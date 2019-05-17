import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './main.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

import './geritInfos.dart';
import 'geritImages.dart';


class Gerit extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<Gerit> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      home: new DefaultTabController(length: 2, child:  new Scaffold(
        appBar: new AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Info"),
              Tab(text: "Images")
            ],
          ),
          title: new Text('Guérites'),
          backgroundColor: Colors.cyan,

        ),
        body: new TabBarView(
            children: [
              new GeritInfos(),
              new GeritImages()
          ]
        )
        )
      )
    );
  }

}