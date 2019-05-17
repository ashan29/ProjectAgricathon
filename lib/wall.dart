  import 'package:flutter/material.dart';
  import 'package:cloud_firestore/cloud_firestore.dart';


List<DocumentSnapshot> fixedLengthList =  new List();


class Wall extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new WState();
  }
}
class user{
  int id;
  String name;
  int score;

  user({this.id, this.name, this.score});
}

class WState extends State<Wall> {
  @override

  Widget _buildListItem(BuildContext context, DocumentSnapshot document) {
    TextEditingController addController = TextEditingController();
    TextEditingController removeController = TextEditingController();

    return ListTile(
      title: Row(
        children: [
          Expanded(
            child: Text(
              document['name'].toString() ,
              style: Theme
                  .of(context)
                  .textTheme
                  .headline,
            ),
          ),


          Container(
            decoration: const BoxDecoration(
              color: Color(0xffddddff),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Text(
              document['score'].toString(),
              style: Theme
                  .of(context)
                  .textTheme
                  .display1,
            ),
          ),
        ],
      ),
      onTap: () {
        //document.reference.updateData({'stocks': document['stocks'] + 1});
      },
    );
  }


  Widget build(BuildContext context) {

    Firestore.instance.collection('users').document()
        .setData({ 'title': 'title', 'author': 'author' });




    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Pierre"),
        backgroundColor: Colors.cyan,
        automaticallyImplyLeading: false,

      ),


      body:

      Padding(
        padding: const EdgeInsets.all(20),
      child:

      new SingleChildScrollView(


        scrollDirection: Axis.vertical,
        child: new Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new Padding(padding: EdgeInsets.all(8.0)),

            new Text("Wine Wall" , style: new TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),),
            new Padding(padding: EdgeInsets.all(8.0)),
            new Text("Valais Wine Yard ", style: new TextStyle(
                fontSize: 20,
                color: Colors.black
            ), ),

            Image(
              image: AssetImage("assets/image/wall.png"),
            ),

            Center(
              child: Text("Te voici arrivé devant les murs en pierres sèches. On appelle ces murs de vigne de cette façon car on trouve ces pierres uniquement dans les vignes. Malheureusement un d’eux s’est effondré, veux-tu m’aider à le reconstruire ? ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      color: Colors.black)),
            ),
            new Padding(padding: EdgeInsets.all(20.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.blueAccent,
                onPressed:(){Navigator.of(context).pushNamed('/intro');
                  },
                child: new Text("Information",
                  style: new TextStyle(
                      fontSize: 18,
                      color: Colors.white
                  ),)
            ),

            new Padding(padding: EdgeInsets.all(8.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed:(){Navigator.of(context).pushNamed('/intro');
                },


                child: new Text("Cart",
                  style: new TextStyle(
                      fontSize: 18,
                      color: Colors.white
                  ),)
            ),
            new Padding(padding: EdgeInsets.all(8.0)),

            new Padding(padding: EdgeInsets.all(8.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.redAccent,
                onPressed:(){Navigator.of(context).pushNamed('/');
               },
                child: new Text("Quiz",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            ),

          ],
        ),
      ),

    )
    );
  }


}