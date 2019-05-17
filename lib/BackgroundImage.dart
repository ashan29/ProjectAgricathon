import 'package:flutter/material.dart';

import 'BackgroundImage2.dart';

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/image/welcomeImage.png',
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
          Center(
            child: new MaterialButton(
              color: Colors.red.withOpacity(0.0),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) =>
                    new BackgroundImage2())
                );
              },


              child: new Text(
                "Welcome",
                style: new TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              padding: const EdgeInsets.all(20.0),
            ),
          ),
        ],
      ),
    );
  }
}