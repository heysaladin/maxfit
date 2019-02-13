import 'package:flutter/material.dart';
//import 'package:maxfit/routes.dart';

import './hal_komputer.dart' as komputer;
import './hal_headset.dart' as headset;
import './hal_radio.dart' as radio;
import './hal_smartphone.dart' as hp;

// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'My Login App',
//       debugShowCheckedModeBanner: false,
//       theme: new ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       routes: routes,
//     );
//   }
// }

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "App Belajar Flutter",
    // home: new BelajarListView(),
    home: new Home(),
    //home: new BelajarNav(),
    //home: new BelajarCard(),
    //home: new BelajarAppBar(),
    //home: new HalamanSatu(),
    //home: new Halo(),
    /*
    routes: <String, WidgetBuilder> {
      '/HalSatu' : (BuildContext context) => new BelajarNav(),
      '/HalDua' : (BuildContext context) => new BelajarNavDua(),
    },
    */
  ));
}

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    controller =  new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   title: new Text("Daftar Elektronik"),
      //   backgroundColor: Colors.amber,
      //   bottom: new TabBar(
      //     controller: controller,
      //     tabs: <Widget>[
      //       new Tab(
      //         icon: new Icon(Icons.computer),
      //         text: "Komputer",
      //       ),
      //       new Tab(
      //         icon: new Icon(Icons.headset),
      //         text: "Headset",
      //       ),
      //       new Tab(
      //         icon: new Icon(Icons.radio),
      //         text: "Radio",
      //       ),
      //       new Tab(
      //         icon: new Icon(Icons.smartphone),
      //         text: "Smartphone",
      //       ),
      //     ],
      //   ),
      // ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new komputer.Komputer(),
          new hp.Smartphone(),
          new headset.Headset(),
          //data: new List<String>.generate(300, (i)=>"Ini data ke ${i+1}"),
          new radio.Radio(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.amber,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.computer),
            ),
            new Tab(
              icon: new Icon(Icons.smartphone),
            ),
            new Tab(
              icon: new Icon(Icons.headset),
            ),
            new Tab(
              icon: new Icon(Icons.radio),
            ),
          ],
        ),
      ),
    );
  }
}
