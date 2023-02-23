import 'package:flutter/material.dart';

void main() {
  runApp
  (
    MaterialApp(
      title: "Mi Segunda aplicacion",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mi segunda aplicacion")
        ),
        body: new Container(
          child: new Center(
            child: new Text("Hello world")
          )
        ),
      )
    )
  );
}