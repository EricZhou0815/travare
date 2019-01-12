import 'package:flutter/material.dart';
import 'package:travare/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travare',
      theme: ThemeData(

      ),
      home: LoadingPage(),
    );
  }
}
