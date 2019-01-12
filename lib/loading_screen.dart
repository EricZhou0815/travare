import 'package:flutter/material.dart';
import 'package:travare/app_text.dart';

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
              "assets/images/logo.png",
            ),
          ),
          Text(
            AppText.get(context, "greeting"),
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
