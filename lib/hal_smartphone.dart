import 'package:flutter/material.dart';

class Smartphone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("SMARTPHONE", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Image(image: new NetworkImage("https://www.notebookcheck.net/fileadmin/_processed_/0/4/csm_large09_3ca56d6a40.jpg",), width: 200.0,)
          ],
        ),
      ),
    );
  }
}