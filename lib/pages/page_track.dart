import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

// class HeadsetOld extends StatelessWidget {
//   final List<String> data;
//   HeadsetOld({this.data});
//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       child: new Center(
//         child: new ListView.builder(
//           itemCount: data.length,
//           itemBuilder: (context, index){
//             return new ListTile(
//               leading: new Icon(Icons.widgets),
//               title: new Text("${data[index]}"),
//             );
//           },
//         )
//       ),
//     );
//   }
// }

class Track extends StatefulWidget {
  @override
  _TrackState createState() => new _TrackState(); 
}

class _TrackState extends State<Track> {
  List dataJSON;
  Future<String> ambildata() async {
    http.Response hasil = await http.get(
      //https://jsonplaceholder.typicode.com/posts
      Uri.encodeFull("http://familygroceries.herokuapp.com/items"), headers: {
        "Accept": "application/json"
      }
    );
    if (this.mounted){
    this.setState((){
      dataJSON = json.decode(hasil.body);
    });
    }
    return 'async data';
  }
  @override
  void initState() {
    this.ambildata();
    super.initState();
  }
  @override
  void dispose() {
    // dataJSON.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new ListView.builder(
        itemCount: dataJSON == null ? 0 : dataJSON.length,
        itemBuilder: (context, i) {
          return new Card(
            // child: new Text(dataJSON[i]['name']),
            child: new Container(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          // child: new Row(
          //   children: <Widget>[
          //     new Checkbox(
          //       value: isChecked,
          //       onChanged: (value) {
          //         setState(() {
          //           isChecked = value;
          //           if(isChecked){
          //             _alertdialog("Done!");
          //           }
          //         });
          //       },
          //     ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // new Row(
                  //   children: <Widget>[
                  new Container(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: new Text(
                      dataJSON[i]['name'],
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
                          width: 85.0,
                          child: new Column(
                            children: <Widget>[
                              new Text(
                                "wght.",
                                style: new TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              ),
                              new Text(
                                "0",
                                style: new TextStyle(
                                    fontSize: 14.0, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          width: 85.0,
                          child: new Column(
                            children: <Widget>[
                              new Text(
                                "reps.",
                                style: new TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              ),
                              new Text(
                                "0",
                                style: new TextStyle(
                                    fontSize: 14.0, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          width: 85.0,
                          child: new Column(
                            children: <Widget>[
                              new Text(
                                "dist.",
                                style: new TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              ),
                              new Text(
                                "2000 m",
                                style: new TextStyle(
                                    fontSize: 14.0, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          width: 85.0,
                          child: new Column(
                            children: <Widget>[
                              new Text(
                                "dur.",
                                style: new TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              ),
                              new Text(
                                "30 ms",
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
          //   ],
          // ),
        ),
          );
        },
      ),
    );
  }

}