import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main (){
  runApp(MyAutoApp());
}
class MyAutoApp extends StatefulWidget {
  const MyAutoApp({super.key});

  @override
  State<MyAutoApp> createState() => _MyAutoAppState();
}

class _MyAutoAppState extends State<MyAutoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen() ,
    );
  }
}
