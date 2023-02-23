import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => new _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
   String flutterText = "";
   int index = 0;
   List<String> collections = ['Hello', 'Ezequiel', '¿Como estas?'];

   void onPressButton(){
    setState(() {
      flutterText = collections[index];
      index = index < 2 ? index + 1 : 0;
    });
   }

   final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
   );
  @override
  Widget build(
    BuildContext context){
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Stateful Widget"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: new Container(
          child: Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(flutterText, style: new TextStyle(fontSize: 40.0)),
              new Padding(padding: new EdgeInsets.all(10.0)),
              new ElevatedButton(
                child: Text("Actualizar", style: TextStyle(fontSize: 10.0, color: Colors.orangeAccent)),
                style: raisedButtonStyle,
                onPressed: onPressButton,
              )
            ],
           )
          ),
        ),
      );
    }
}



