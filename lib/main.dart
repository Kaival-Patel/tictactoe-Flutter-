import 'package:flutter/material.dart';
import 'HomePage.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState()=>MyAppState();
}

class MyAppState extends State<MyApp> {



  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}