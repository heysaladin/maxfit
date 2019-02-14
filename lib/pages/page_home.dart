import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.symmetric(vertical: 24.0),
              color: Colors.white,
              child: new CarouselSlider(
                  items: [1,2,3,4,5].map((i) {
                    return new Builder(
                      builder: (BuildContext context) {
                        return new Container(
                            width: MediaQuery.of(context).size.width,
                            margin: new EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: new BoxDecoration(
//                                color: Colors.amber

                            ),
                            child: new ClipRRect(
                                      borderRadius: BorderRadius.circular(5.0),
//                              fit: BoxFit.fill,
                                  child: new Image(fit: BoxFit.fill, image: new NetworkImage("https://c.stocksy.com/a/iZ3400/z9/967058.jpg",),)
                      ),
                            //new Text('text $i', style: new TextStyle(fontSize: 16.0),)
                        );
                      },
                    );
                  }).toList(),
                  height: 200.0,
                  autoPlay: true
              ),
//            ),
            ),
          ],
        ),
      ),
    );
  }
}