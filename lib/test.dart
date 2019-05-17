import 'package:flutter/material.dart';

import 'gerit.dart';
import 'geritImages.dart';

class Test extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Info"),
                Tab(text: "Image")
              ],
            ),
            title: Text('Gerit test'),
          ),
          body: TabBarView(
            children: [
              Gerit(),
              GeritImages(),
            ],
          ),
        ),
      ),
    );
  }

}

