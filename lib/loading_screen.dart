import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 15.0),
            child: Image.asset(
              "images/logo.png",
            ),
          ),
          Text(
            "Share the jounery \r\nwith friends...",
            style: Theme.of(context)
                .textTheme
                .body1
                .copyWith(fontSize: 25, color: Colors.grey[500]),
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
