import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Image.asset("images/logo.png"),
            Text(
                "Share the jounery with friends…",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[500],
                ),
            ),
          ],
        ),
      ),
    );
  }
}