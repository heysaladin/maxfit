import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new ListView(
      children: <Widget>[
        new ListTutorial(
            gambar: "http://idrcorner.com/assets/nn/imgs/html.jpg",
            judul: "HTML"
            ),
        new ListTutorial(
            gambar: "http://idrcorner.com/assets/nn/imgs/html.jpg",
            judul: "HTML 2"
            ),
      ],
    )
        //  new Center(
        //   child: new Column(
        //     children: <Widget>[
        //       new Padding(padding: new EdgeInsets.all(20.0),),
        //       new Text("RADIO", style: new TextStyle(fontSize: 30.0),),
        //       new Padding(padding: new EdgeInsets.all(20.0),),
        //       new Image.asset("img/anatomy.png")
        //     ],
        //   ),
        // ),
        );
  }
}

class ListTutorial extends StatelessWidget {
  ListTutorial({this.gambar, this.judul});
  final String gambar;
  final String judul;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Image(
              image: new NetworkImage(gambar),
              width: 200.0,
            ),
            new Text(
              judul,
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
