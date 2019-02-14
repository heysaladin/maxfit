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
    return new Container(
      color: Colors.grey[250],
      child: new SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Container(
                margin: EdgeInsets.only(top: 24.0, bottom: 10.0,),
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
                                      Icons.cached,
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
                                      Icons.cached,
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
                    new Padding(padding: EdgeInsets.all(5.0),),
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
                                      Icons.cached,
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
                                      Icons.cached,
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
                height: 300.0,
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                child: new Column(
                  children: <Widget>[
                    new Text("FRIEND ACTIVITIES".toUpperCase()),
                    new Padding(padding: EdgeInsets.only(bottom: 15.0)),
                    new Container(
                      height: 70.0,
                      child: new Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: new Container(),
                      ),
                    ),
                    new Container(
                      height: 70.0,
                      child: new Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: new Container(),
                      ),
                    ),
                    new Container(
                      height: 70.0,
                      child: new Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: new Container(),
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
                            onPressed: () {},
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
