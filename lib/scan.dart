import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './main.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

class Scan extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<Scan> {


  String barcode = "";



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Play and Scan'),
          backgroundColor: Colors.cyan,

        ),
        body: new Padding(
            padding: const EdgeInsets.all(20),
            child: new Center(
              child: new Column(
                children: <Widget>[
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text(
                    "Trouve un QR code dans l'école et scanne le.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text("Il y a différents QR Codes :",
                      textAlign: TextAlign.center),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text("Les QR Codes Jaunes permettent de défier un expert.",
                      textAlign: TextAlign.center),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text(
                      "Les QR Codes Bleus permettent de contrôler les dires d'un formateur.",
                      textAlign: TextAlign.center),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Text(
                      "Les QR Codes Rouges permettent de rentrer dans une arène pour défier d'autres joueurs.",
                      textAlign: TextAlign.center),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Container(
                    child: new MaterialButton(
                        color: Colors.green,

                        onPressed: scan,
                        child: new Text(
                          "Clique ici pour accéder au scan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        )),
                    padding: const EdgeInsets.all(15.0),
                  ),
                  new MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/');
                    },
                    child: new Text(
                      "Retour",
                      style: new TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();

      ;

      setState(() {


        if (barcode == "Expert1") {

            Navigator.of(context).pushNamed('/player');



        } else {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new GoReviz()));
        }
      });
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.barcode =
          'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
}
