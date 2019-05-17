import 'package:flutter/material.dart';

class GeritInfos extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<GeritInfos> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      home: new Scaffold(

          body: new Padding(
              padding: const EdgeInsets.all(20),
              child: new SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: new Center(
                    child: new Column(
                      children: <Widget>[
                        new Padding(padding: EdgeInsets.all(10.0)),
                        new Container(),
                        Image(
                          image: AssetImage("assets/image/Guerites.jpg"),
                        ),
                        new Text(
                          "Chemin des Vignes et des Guérites",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        new Padding(padding: EdgeInsets.all(10.0)),

                        new Text(
                            "Bienvenue à ma Guérite ! Une guérite c’est une petite maison "
                                "que les vignerons ont construits dans les vignes pour y "
                                "ranger leur matériel : les caisses, les sécateurs et beaucoup "
                                "d’autres choses. C’est ici qu’on prenait les repas et surtout "
                                "qu’on se racontait pleins de choses… Voici une petite histoire…… “Une  "
                                "vraie petite histoire”"
                            ,textAlign: TextAlign.center),

                        new Padding(padding: EdgeInsets.all(10.0)),

                        new Text( "Les Guérites sont des petites bâtisses représentatives "
                            "de notre région et de la viticulture. Certaines Guérites valaisannes "
                            "existent depuis le 19e siècle et n’ont pratiquement pas changé de couleurs. "
                            "Autrefois utilisé pour y loger durant la période des vendanges ou même pour "
                            "la préparation des repas, celles-ci font aujourd’hui office uniquement de rangement de matériel."
                            ,textAlign: TextAlign.center),
                        new Padding(padding: EdgeInsets.all(10.0)),

                        new Text("Les Guérites ont été comptées au nombre de … "
                            "rien que dans le canton du Valais. Ces Guérites "
                            "utilisées pour blabala se sont construites "
                            "avec des matériaux blbalbla."
                            ,textAlign: TextAlign.center),



                        new Padding(padding: EdgeInsets.all(10.0)),

                        new Padding(padding: EdgeInsets.all(10.0)),


                      ],
                    ),
                  ))),
          ),
    );
  }
}