//@dart=2.8
import 'package:flutter/material.dart';
import './screens/weather_app.dart';


void main(){
  runApp(myApp());
}
class myApp extends StatefulWidget {
  const myApp({Key key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return homepage();
  }
}
