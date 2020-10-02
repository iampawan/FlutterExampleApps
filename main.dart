import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        Text(
          "updated app",
           style: TextStyle(
           color: Colors.red,
           fontSize: 18,
           fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

