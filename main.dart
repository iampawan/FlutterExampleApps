import 'package:flutter/material.dart';
import 'home_page.dart';
void main() => runApp(new Myapp());
 class Myapp extends StatelessWidget
 {
   @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'calculator app',
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new HomePage(), 
    );
  }
 }
