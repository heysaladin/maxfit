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

class Headset extends StatefulWidget {
  @override
  _HeadsetState createState() => new _HeadsetState(); 
}

class _HeadsetState extends State<Headset> {
  List dataJSON;
  Future<String> ambildata() async {
    http.Response hasil = await http.get(
      //https://jsonplaceholder.typicode.com/posts
      Uri.encodeFull("http://familygroceries.herokuapp.com/items"), headers: {
        "Accept": "application/json"
      }
    );
    this.setState((){
      dataJSON = json.decode(hasil.body);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    this.ambildata();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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