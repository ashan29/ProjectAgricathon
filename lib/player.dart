  import 'package:flutter/material.dart';
  import 'package:cloud_firestore/cloud_firestore.dart';


List<DocumentSnapshot> fixedLengthList =  new List();


class PlayerC extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PState();
  }
}
class user{
  int id;
  String name;
  int score;

  user({this.id, this.name, this.score});
}

class PState extends State<PlayerC> {
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
        title: new Text("Oenotourisme"),
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

            new Text("Step 3" , style: new TextStyle(
                fontSize: 18,
                color: Colors.black
            ),),
            new Padding(padding: EdgeInsets.all(8.0)),
            new Text("Je veus visiter  " ),

            new Padding(padding: EdgeInsets.all(20.0)),
            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed:(){Navigator.of(context).pushNamed('/intro');
                  },
                child: new Text("Commencer le jeu",
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
                child: new Text("Retour",
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