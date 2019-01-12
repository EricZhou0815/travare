import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travare/i18n/localizations.dart';
import 'package:travare/app_text.dart';
import 'package:travare/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      onGenerateTitle: (BuildContext context) => AppText.of(context).get("title"),
      theme: ThemeData(

      ),
      localizationsDelegates: [
        const MyLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: MyLocalizations.languages.map((language) => Locale(language, '')),
      home: LoadingPage(),
    );
  }
}
