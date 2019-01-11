import 'package:flutter/material.dart';
import 'package:travare/loading_screen.dart';
import 'package:travare/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        title: 'Travare',
        theme: ThemeData.light(),
        initialRoute: "/",
        routes: {
          "/": (context) => LoadingPage(),
          "/main": (context) => MainPage(),
        },
      ),
    );
  }
}

