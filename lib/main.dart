import 'package:flutter/material.dart';
import 'package:kt5/homepage.dart';

void main() {
  runApp(const MyCars());
}

class MyCars extends StatelessWidget {
  const MyCars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyCars',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        brightness: Brightness.dark, 
      ),
      home: HomePage(),
    );
  }
}