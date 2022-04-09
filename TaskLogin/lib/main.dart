
import 'package:flutter/material.dart';
import 'package:tasklogin/second_page.dart';

import 'login_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    SecondPage.tag: (context) => SecondPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task',
      home: LoginPage(),
      routes: routes,
    );
  }
}