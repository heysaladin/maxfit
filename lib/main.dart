import 'package:flutter/material.dart';
//import 'package:maxfit/routes.dart';

import './pages/page_home.dart' as home;
import './pages/page_plan.dart' as plan;
import './pages/page_track.dart' as track;
import './pages/page_analytic.dart' as analytic;

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
    title: "MAXFIT",
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
          new home.Home(),
          new plan.Plan(),
          new track.Track(),
          //data: new List<String>.generate(300, (i)=>"Ini data ke ${i+1}"),
          new analytic.Analytic(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.white,
        elevation: 25.0,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home, color: Colors.grey,),
            ),
            new Tab(
              icon: new Icon(Icons.description, color: Colors.grey,),
            ),
            new Tab(
              icon: new Icon(Icons.assignment, color: Colors.grey,),
            ),
            new Tab(
              icon: new Icon(Icons.insert_chart, color: Colors.grey,),
            ),
          ],
        ),
      ),
    );
  }
}
