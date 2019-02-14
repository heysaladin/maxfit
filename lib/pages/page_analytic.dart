import 'package:flutter/material.dart';

class Analytic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
//      child: new Center(
      child: new SingleChildScrollView(
//        child: new Column(
//          children: <Widget>[
//            new Container(
//              height: 300.0,
//              // Add box decoration
//              decoration: BoxDecoration(
//                // Box decoration takes a gradient
//                gradient: LinearGradient(
//                  // Where the linear gradient begins and ends
//                  begin: Alignment.topRight,
//                  end: Alignment.bottomLeft,
//                  // Add one stop for each color. Stops should increase from 0 to 1
//                  stops: [0.1, 0.5, 0.7, 0.9],
//                  colors: [
//                    // Colors are easy thanks to Flutter's Colors class.
//                    Colors.grey[800],
//                    Colors.grey[700],
//                    Colors.grey[600],
//                    Colors.grey[500],
//                  ],
//                ),
//              ),
//              child: new Center(
//                child: new Column(
//                  children: <Widget>[
//                    new Padding(
//                      padding: new EdgeInsets.all(20.0),
//                    ),
//                    new Image.asset(
//                      "img/anatomy.png",
//                      height: 240.0,
//                    )
//                  ],
//                ),
//              ),
//              // ),
//              // new Container(
//              //   child:
//              // new Text("AW")
//            ),
////            new Container(
////            child:
////            new ListView(
////              children: <Widget>[
////                new ListTutorial(
////                    gambar: "http://idrcorner.com/assets/nn/imgs/html.jpg",
////                    judul: "HTML"),
////                new ListTutorial(
////                    gambar: "http://idrcorner.com/assets/nn/imgs/html.jpg",
////                    judul: "HTML 2"),
////              ],
////            ),
////            ),
//             new Text("HOLA HAHAHA")
//          ],
//        ),

        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 120.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                // A fixed-height child.
//                  color: Colors.yellow,
//                  height: 120.0,
//                              new Container(
                height: 300.0,
                // Add box decoration
                decoration: BoxDecoration(
                  // Box decoration takes a gradient
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      Colors.grey[800],
                      Colors.grey[700],
                      Colors.grey[600],
                      Colors.grey[500],
                    ],
                  ),
                ),
                child: new Center(
                  child: new Column(
                    children: <Widget>[
                      new Padding(
                        padding: new EdgeInsets.all(20.0),
                      ),
                      new Image.asset(
                        "img/anatomy.png",
                        height: 240.0,
                      )
                    ],
                  ),
                ),
                // ),
                // new Container(
                //   child:
                // new Text("AW")
              ),
//                ),
              new Container(
                // Another fixed-height child.
//                  color: Colors.green,
                height: 200.0,
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                child: new Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: new Container(
                  ),
                )
//                new ClipRRect(
//                  borderRadius: BorderRadius.circular(40.0),
//                  child: new Container(
//                  color: Colors.grey,
//                  height: 50.0,
//
//                ),
//                ),
//                    )
//            new ListView(
//              children: <Widget>[
//                new ListTutorial(
//                    gambar: "http://idrcorner.com/assets/nn/imgs/html.jpg",
//                    judul: "HTML"),
//                new ListTutorial(
//                    gambar: "http://idrcorner.com/assets/nn/imgs/html.jpg",
//                    judul: "HTML 2"),
//              ],
//            ),
              ),
              new Container(
                  height: 250.0,
                  margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                  child: new Column(
                    children: <Widget>[
                      new Text("Recomendation"),
                      new Padding(padding: EdgeInsets.only(bottom: 15.0)),
                      new Container(
                        height: 70.0,
                        child: new Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: new Container(
                          ),
                        ),
                      ),
                      new Container(
                        height: 70.0,
                        child: new Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: new Container(
                          ),
                        ),
                      ),
                      new Container(
                        height: 70.0,
                        child: new Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: new Container(
                          ),
                        ),
                      ),
                    ],
                  )

              ),

              new Container(
                  height: 50.0,
                  margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                  child: new ButtonTheme(
                      minWidth: 400.0,
                      height: 100.0,
                      child: RaisedButton(

                        color: Colors.blue,
                    onPressed: () {},
                    child: new Text("Edit Profile", style: new TextStyle(color: Colors.white),),
                  )
                  ),
              ),

            ],
          ),
        ),

//        ),
      ),
    );
  }
}

/*
new ListTutorial(gambar: "http://idrcorner.com/assets/nn/imgs/html.jpg", judul: "HTML 2"),
 */
class ListTutorial extends StatelessWidget {
  ListTutorial({this.gambar, this.judul});
  final String gambar;
  final String judul;
  @override
  Widget build(BuildContext context) {
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
