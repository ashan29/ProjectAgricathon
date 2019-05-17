import 'package:flutter/material.dart';
import 'package:vip/scan.dart';
import 'geritImages.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './main.dart';
import 'dart:async';

class BackgroundImage3 extends StatefulWidget {

  State2 createState() => new State2();
}


class State2 extends State<BackgroundImage3> {
  @override

  String barcode = "";


  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(


      body: Stack(

        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/image/menuBackground.png',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Text("",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    color: Colors.white)),

          ),
         

          new SingleChildScrollView(


            scrollDirection: Axis.vertical,
            child: new Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                new Padding(padding: EdgeInsets.all(8.0)),
/*
            new Text("Step 3" , style: new TextStyle(
                fontSize: 18,
                color: Colors.black
            ),),
            new Padding(padding: EdgeInsets.all(8.0)),
            new Text("Je veus visiter  " ),
*/
                new Padding(padding: EdgeInsets.all(20.0)),

                new Padding(padding: EdgeInsets.all(20.0)),


                new Padding(padding: EdgeInsets.all(20.0)),




                new Padding(padding: EdgeInsets.all(8.0)),

                new Padding(padding: EdgeInsets.all(8.0)),
                new Center(
                  child: new SizedBox(
                  width: 200.0,
                  height: 100.0,
                  child: new RaisedButton.icon( elevation: 4.0,

                      icon: Icon(Icons.add_a_photo),
                      color: Color.fromRGBO(173, 31, 69, 1).withOpacity(0.0),
                      onPressed: scan,
                      label: Text("Scan",style: TextStyle(
                          color: Colors.white, fontSize: 20.0))
                  ),
                ),
                ),





              ],
            ),
          ),
        ],
      ),


    );


  }
  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();

      ;

      setState(() {


        if (barcode == "Expert1") {

          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
              new BackgroundImage3())
          );
         // Navigator.of(context).pushNamed('/gerit');



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