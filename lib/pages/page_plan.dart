import 'package:flutter/material.dart';

class Plan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      // child: new Center(
      //   child: new Column(
      //     children: <Widget>[
      // new Padding(padding: new EdgeInsets.all(20.0),),
      // new Text("PLAN", style: new TextStyle(fontSize: 30.0),),
      // new Padding(padding: new EdgeInsets.all(20.0),),
      // new Image(image: new NetworkImage("https://dspncdn.com/a1/media/692x/f7/cc/f1/f7ccf1586157ab9d85f0d950d6ea26f8.jpg",), width: 200.0,)
      // new Container(
      child: new ListView(
        children: <Widget>[
          new ListTutorial(
            judul: "Outdoor Running",
            weight: "0",
            repetition: "0",
            distance: "2000",
            duration: "30",
          ),
          new ListTutorial(
            judul: "Outdoor Running",
            weight: "0",
            repetition: "0",
            distance: "2000",
            duration: "30",
          ),
          new ListTutorial(
            judul: "Outdoor Running",
            weight: "0",
            repetition: "0",
            distance: "2000",
            duration: "30",
          ),
          new ListTutorial(
            judul: "Outdoor Running",
            weight: "0",
            repetition: "0",
            distance: "2000",
            duration: "30",
          ),
          new ListTutorial(
            judul: "Outdoor Running",
            weight: "0",
            repetition: "0",
            distance: "2000",
            duration: "30",
          ),
          new ListTutorial(
            judul: "Outdoor Running",
            weight: "0",
            repetition: "0",
            distance: "2000",
            duration: "30",
          ),
          new ListTutorial(
            judul: "Outdoor Running",
            weight: "0",
            repetition: "0",
            distance: "2000",
            duration: "30",
          ),
        ],
      ),
      // ),
      //     ],
      //   ),
      // ),
    );
  }
}

class ListTutorial extends StatefulWidget {
  ListTutorial({
    this.judul,
    this.weight,
    this.repetition,
    this.distance,
    this.duration,
  });
  final String judul;
  final String weight;
  final String repetition;
  final String distance;
  final String duration;
  createState() => ListTutorialState(
        judul: judul,
        weight: weight,
        repetition: repetition,
        distance: distance,
        duration: duration,
      );
}

/*
new ListTutorial(gambar: "http://idrcorner.com/assets/nn/imgs/html.jpg", judul: "HTML 2"),
 */
class ListTutorialState extends State<ListTutorial> {
  ListTutorialState({
    this.judul,
    this.weight,
    this.repetition,
    this.distance,
    this.duration,
  });
  final String judul;
  final String weight;
  final String repetition;
  final String distance;
  final String duration;
  bool isChecked = false;
  void _alertdialog(String str) {
    if (str.isEmpty) return;
    AlertDialog alertDialog = new AlertDialog(
      content: new Text(
        str,
        style: new TextStyle(fontSize: 20.0),
      ),
      actions: <Widget>[
        new RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: new Text("OK"),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
    showDialog(
      context: context,
      child: alertDialog,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(0.0),
      child: new Card(
        child: new Container(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: new Row(
            children: <Widget>[
              new Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                    if (isChecked) {
                      _alertdialog("Done!");
                    }
                  });
                },
              ),
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // new Row(
                  //   children: <Widget>[
                  new Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: new Text(
                      judul,
                      style: TextStyle(fontSize: 20.0),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  //   ],
                  // ),
                  new Container(
                    padding: EdgeInsets.only(top: 15.0, bottom: 5.0),
                    child: new Row(
                      children: <Widget>[
                        new Container(
                          width: 70.0,
                          child: new Column(
                            children: <Widget>[
                              new Text(
                                "wght.",
                                style: new TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              ),
                              new Text(
                                "${weight}",
                                style: new TextStyle(
                                    fontSize: 14.0, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          width: 70.0,
                          child: new Column(
                            children: <Widget>[
                              new Text(
                                "reps.",
                                style: new TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              ),
                              new Text(
                                "${repetition}",
                                style: new TextStyle(
                                    fontSize: 14.0, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          width: 70.0,
                          child: new Column(
                            children: <Widget>[
                              new Text(
                                "dist.",
                                style: new TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              ),
                              new Text(
                                "${distance} m",
                                style: new TextStyle(
                                    fontSize: 14.0, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          width: 70.0,
                          child: new Column(
                            children: <Widget>[
                              new Text(
                                "dur.",
                                style: new TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              ),
                              new Text(
                                "${duration} hrs",
                                style: new TextStyle(
                                    fontSize: 14.0, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
