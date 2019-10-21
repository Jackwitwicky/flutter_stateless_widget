import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyStatelessWidget(),
  ));
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text('StatelessWidget')),
      body: new Container(
        // adding padding around the card
        padding: new EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(
                title: new Text('I love flutter'),
                icon: new Icon(Icons.favorite, size: 40.0, color: Colors.redAccent)),
            new MyCard(
                title: new Text("I love Donuts"),
                icon: new Icon(Icons.donut_large, size: 40.0, color: Colors.brown)),
            new MyCard(
                title: new Text("I see you"),
                icon: new Icon(Icons.visibility, size: 40.0, color: Colors.blue))
          ],
        )
        
      )
    );
  }
}

class MyCard extends StatelessWidget {
  
  // define class constructor to accept
  // card title and icon
  MyCard({this.title, this.icon});
  
  final Widget title;
  final Widget icon;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: new EdgeInsets.only(bottom: 20.0),
      
      child: new Card(
        child: new Container(
          // add padding inside card
          padding: new EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[
              this.title,
              this.icon
            ],
          ),
        )
      ),
    );
  }
}
