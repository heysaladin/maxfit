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
            child: new Text(dataJSON[i]['name']),
          );
        },
      ),
    );
  }

}