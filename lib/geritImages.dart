import 'package:flutter/material.dart';

import 'gerit.dart';

class GeritImages extends StatefulWidget{

  ImagesState createState() => new ImagesState();

}

class ImagesState extends State<GeritImages>{
  @override
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      home:  new Scaffold(

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
                        "Chemin des Vignes et des Guérites – Fully",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      new Padding(padding: EdgeInsets.all(10.0)),
                      new Text(
                          "Ce chemin offre un magnifique point de vue sur la plaine du Rhône",
                          textAlign: TextAlign.center),
                      new Padding(padding: EdgeInsets.all(10.0)),
                      new Text(
                          "Rythmé par la présence de figuiers, d’oliviers, de kakis, de plantes aromatiques et " +
                              "d’amandiers, il relie les villages à flanc de coteau. Le sentier longe des terrasses de " +
                              "vignes entre les remarquables murs de pierres sèches, témoins du labeur et du courage " +
                              "des ancêtres. Grâce à son extraordinaire exposition, il est praticable quasiment toute l’année." +
                              "Cette balade offre une vue étonnante de la plaine du Rhône et relie la châtaigneraie de Branson et " +
                              "celle de Vers-l’Eglise. Plusieurs panneaux d’information jalonnent le chemin, ils contiennent " +
                              "des explications sur l’évolution de la vigne au fil des saisons ainsi que sur les points singuliers " +
                              "du vignoble de Fully. Le sentier peut être parcouru dans les deux sens et en toutes " +
                              "saisons, vous avez la possibilité d’effectuer le retour en car postal.",


                          textAlign: TextAlign.center),
                      new Padding(padding: EdgeInsets.all(10.0)),

                      new Padding(padding: EdgeInsets.all(10.0)),


                    ],
                  ),
                ))),
      ),
    );
  }
}