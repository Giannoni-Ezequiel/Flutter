import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final double iconSize = 40.0;
    final TextStyle textStyle = new TextStyle(
                color: Colors.grey, fontSize: 30.0);
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless widget"),
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              MyCard(title: Text("I love Flutter", style: textStyle), 
                      icon: Icon(Icons.favorite, size: iconSize, color: Colors.redAccent)),
              MyCard(title: Text("I love Dart", style: textStyle), 
                      icon: Icon(Icons.thumb_up, size: iconSize, color: Colors.blueAccent)),
              MyCard(title: Text("Next Video", style: textStyle), 
                      icon: Icon(Icons.queue_play_next, size: iconSize, color: Colors.brown)),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  MyCard({required this.title,required this.icon});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[this.title, this.icon],
          )
        )
      )
    );
  }
}