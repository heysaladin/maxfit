import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  final List<String> imgList = [
    'https://www.mensjournal.com/wp-content/uploads/mf/man_lifting_main.jpg',
    'https://www.sixpackbags.com/wp/wp-content/uploads/2016/01/Benefits-of-Lifting-Weights-4.jpg',
    'https://c.stocksy.com/a/iZ3400/z9/967058.jpg',
    'https://fitnessfaqs.tv/wp-content/uploads/2018/08/Planche-Pro-768x432.jpg',
  ];

  @override
  Widget build(BuildContext context) {
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

    return new Container(
      color: Colors.grey[250],
      child: new SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Container(
                margin: EdgeInsets.only(
                  top: 24.0,
                  bottom: 10.0,
                ),
                color: Colors.grey[250],
                child: new CarouselSlider(
                    items: imgList.map((i) {
                      return new Builder(
                        builder: (BuildContext context) {
                          return new Container(
                            width: MediaQuery.of(context).size.width,
                            margin: new EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: new BoxDecoration(),
                            child: new ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: new Image(
                                fit: BoxFit.fitHeight,
                                image: new NetworkImage(
                                  i,
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                    height: 250.0,
                    autoPlay: true),
              ),
              new Container(
                height: 220.0,
                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      height: 100.0,
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Container(
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            width: 145.0,
                            height: 100.0,
                            child: new Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: new Column(
                                children: <Widget>[
                                  new Container(
                                    padding: EdgeInsets.all(5.0),
                                    child: new Icon(
                                      Icons.fitness_center,
                                      size: 55.0,
                                    ),
                                  ),
                                  new Text("Lifting")
                                ],
                              ),
                            ),
                          ),
                          new Container(
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            width: 145.0,
                            height: 100.0,
                            child: new Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: new Column(
                                children: <Widget>[
                                  new Container(
                                    padding: EdgeInsets.all(5.0),
                                    child: new Icon(
                                      Icons.airline_seat_recline_extra,
                                      size: 55.0,
                                    ),
                                  ),
                                  new Text("Gymnastic")
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    new Container(
                      height: 100.0,
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Container(
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            width: 145.0,
                            height: 100.0,
                            child: new Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: new Column(
                                children: <Widget>[
                                  new Container(
                                    padding: EdgeInsets.all(5.0),
                                    child: new Icon(
                                      Icons.directions_run,
                                      size: 55.0,
                                    ),
                                  ),
                                  new Text("Cardiovascular")
                                ],
                              ),
                            ),
                          ),
                          new Container(
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            width: 145.0,
                            height: 100.0,
                            child: new Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: new Column(
                                children: <Widget>[
                                  new Container(
                                    padding: EdgeInsets.all(5.0),
                                    child: new Icon(
                                      Icons.accessibility_new,
                                      size: 55.0,
                                    ),
                                  ),
                                  new Text("Calystenics")
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                height: 1375.0,
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 25.0),
                child: new Column(
                  children: <Widget>[
                    new Text("FRIEND ACTIVITIES".toUpperCase()),
                    new Padding(padding: EdgeInsets.only(bottom: 15.0)),
                    new Container(
                      height: 430.0,
                      child: new Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: new Container(
                          child: new Column(
                            children: <Widget>[
                              new ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: new Image(
                                  height: 290.0,
                                  fit: BoxFit.fitHeight,
                                  image: new NetworkImage(
                                    'https://games-assets.crossfit.com/a-dlsetup-shdnmmwwqhu7512jh_0.jpg',
                                  ),
                                ),
                              ),
                              new Container(
                                padding: EdgeInsets.all(15.0),
                                child: new Row(
                                  children: <Widget>[
                                    new Text(
                                      "John Doe",
                                      style: new TextStyle(
                                          fontSize: 14.0, color: Colors.black),
                                    ),
                                    new Text(
                                      " / 12 Martch 2019",
                                      style: new TextStyle(
                                          fontSize: 14.0, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              new Container(
                                padding: EdgeInsets.symmetric(horizontal: 15.0),
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Text(
                                      "Go out and shake your body... push push push...",
                                      style: new TextStyle(
                                          fontSize: 16.0, color: Colors.black),
                                    ),
                                    new Padding(
                                      padding: EdgeInsets.all(2.0),
                                    ),
                                    new Text(
                                      "#lifting #fighter #fit",
                                      style: new TextStyle(
                                          fontSize: 16.0, color: Colors.blue),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      height: 430.0,
                      child: new Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: new Container(
                          child: new Column(
                            children: <Widget>[
                              new ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: new Image(
                                  height: 290.0,
                                  fit: BoxFit.fitHeight,
                                  image: new NetworkImage(
                                    'https://tredz.azureedge.net/assets/Images/UserPages/content-images/guides-reviews/size-guides/bike-size-guide/womens-specific-bikes.jpg',
                                  ),
                                ),
                              ),
                              new Container(
                                padding: EdgeInsets.all(15.0),
                                child: new Row(
                                  children: <Widget>[
                                    new Text(
                                      "John Doe",
                                      style: new TextStyle(
                                          fontSize: 14.0, color: Colors.black),
                                    ),
                                    new Text(
                                      " / 12 Martch 2019",
                                      style: new TextStyle(
                                          fontSize: 14.0, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              new Container(
                                padding: EdgeInsets.symmetric(horizontal: 15.0),
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Text(
                                      "Go out and shake your body... push push push...",
                                      style: new TextStyle(
                                          fontSize: 16.0, color: Colors.black),
                                    ),
                                    new Padding(
                                      padding: EdgeInsets.all(2.0),
                                    ),
                                    new Text(
                                      "#lifting #fighter #fit",
                                      style: new TextStyle(
                                          fontSize: 16.0, color: Colors.blue),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      height: 430.0,
                      child: new Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: new Container(
                          child: new Column(
                            children: <Widget>[
                              new ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: new Image(
                                  height: 290.0,
                                  fit: BoxFit.fitHeight,
                                  image: new NetworkImage(
                                    'https://d1s9j44aio5gjs.cloudfront.net/2016/07/The_Benefits_of_Swimming.jpg',
                                  ),
                                ),
                              ),
                              new Container(
                                padding: EdgeInsets.all(15.0),
                                child: new Row(
                                  children: <Widget>[
                                    new Text(
                                      "John Doe",
                                      style: new TextStyle(
                                          fontSize: 14.0, color: Colors.black),
                                    ),
                                    new Text(
                                      " / 12 Martch 2019",
                                      style: new TextStyle(
                                          fontSize: 14.0, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              new Container(
                                padding: EdgeInsets.symmetric(horizontal: 15.0),
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Text(
                                      "Go out and shake your body... push push push...",
                                      style: new TextStyle(
                                          fontSize: 16.0, color: Colors.black),
                                    ),
                                    new Padding(
                                      padding: EdgeInsets.all(2.0),
                                    ),
                                    new Text(
                                      "#lifting #fighter #fit",
                                      style: new TextStyle(
                                          fontSize: 16.0, color: Colors.blue),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(top: 25.0),
                      height: 20.0,
                      child: new ButtonTheme(
                          minWidth: 100.0,
                          height: 50.0,
                          child: FlatButton(
                            color: Colors.white,
                            onPressed: () {
                              _alertdialog("Under Development");
                            },
                            child: new Text(
                              "Load More",
                              style: new TextStyle(color: Colors.black),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
