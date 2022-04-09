import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  static String tag = 'home-page';

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      //appBar: AppBar(
      //  title: Text("After Login"),
      // ),
      body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              Text('Hi, Welcome to\n Sample One',
                  style: TextStyle(fontSize: 30, color: Colors.black54),
                  textAlign: TextAlign.center),
              SizedBox(height: 20),
              ElevatedButton( style: raisedButtonStyle,onPressed:(){} , child:Text(
                "Register",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),)
            ],
          )),
    );
  }
}
final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.blue,
  side: BorderSide(width: 1),
  //elevation: 2,
  //primary: Colors.lightGreenAccent,
  minimumSize: Size(20, 20),
  padding: EdgeInsets.all(12),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(24)),
  ),
);