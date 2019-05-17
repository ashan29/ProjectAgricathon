import 'package:flutter/material.dart';

class BackgroundImage2 extends StatelessWidget {
  @override
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
                new SizedBox(
                  width: 200.0,
                  height: 100.0,
                  child: new RaisedButton.icon( elevation: 4.0,

                      icon: new Image.asset("assets/image/family.png"),
                      color: Color.fromRGBO(173, 31, 69, 1).withOpacity(0.0),
                      onPressed: (){Navigator.of(context).pushNamed('/scan');
                      },
                      label: Text("Ludic & Family",style: TextStyle(
                          color: Colors.white, fontSize: 20.0))
                  ),
                ),



                new Padding(padding: EdgeInsets.all(20.0)),

                new SizedBox(
                  width: 200.0,
                  height: 100.0,
                  child: new RaisedButton.icon( elevation: 4.0,
                      icon: new Image.asset("assets/image/wineLover.png"),
                      color: Color.fromRGBO(173, 31, 69, 1).withOpacity(0.0),
                      onPressed: (){Navigator.of(context).pushNamed('/scan');
                      },
                      label: Text("Wine Lovers",style: TextStyle(
                          color: Colors.white, fontSize: 20.0))
                  ),
                ),

                new Padding(padding: EdgeInsets.all(20.0)),

                new SizedBox(
                  width: 200.0,
                  height: 100.0,
                  child: new RaisedButton.icon( elevation: 4.0,
                      icon: new Image.asset("assets/image/expert.png"),
                      color: Color.fromRGBO(173, 31, 69, 1).withOpacity(0.0),
                      onPressed: (){Navigator.of(context).pushNamed('/scan');
                      },
                      label: Text("Professional",style: TextStyle(
                          color: Colors.white, fontSize: 20.0))
                  ),
                ),



                new Padding(padding: EdgeInsets.all(8.0)),

                new Padding(padding: EdgeInsets.all(8.0)),


              ],
            ),
          ),
        ],
      ),


    );

  }
}