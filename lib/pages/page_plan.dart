import 'package:flutter/material.dart';

class Plan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("PLAN", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Image(image: new NetworkImage("https://dspncdn.com/a1/media/692x/f7/cc/f1/f7ccf1586157ab9d85f0d950d6ea26f8.jpg",), width: 200.0,)
          ],
        ),
      ),
    );
  }
}