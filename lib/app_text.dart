import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:travare/i18n/localizations.dart';


class AppText {
  final Locale _locale;

  AppText(this._locale);

  static AppText of(BuildContext context) {
    return Localizations.of<AppText>(context, AppText);
  }

  /// The order of params is same as the order in which the strings were defined, for example:
  /// Defining string on MyLocalizations.localizedValues - "path": "From {param} to {param}"
  /// Then, invoking AppText.get(context, "path", ["Beijing", "Shanghai"]) will return string:
  /// "From Beijing to Shanghai"
  static String get(BuildContext context, String name, [List<String> params]) {
    AppText appText = Localizations.of(context, AppText);
    String text = MyLocalizations.localizedValues[appText._locale.languageCode][name];
    if (params == null) {
      return text;
    } else {
      for (String param in params) {
        text = text.replaceFirst(RegExp('\{param\}'), param);
      }
      return text;
    }
  }
}

class MyLocalizationsDelegate extends LocalizationsDelegate<AppText> {
  const MyLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => MyLocalizations.languages.contains(locale.languageCode);

  @override
  Future<AppText> load(Locale locale) {
    return SynchronousFuture<AppText>(AppText(locale));
  }

  @override
  bool shouldReload(MyLocalizationsDelegate old) => false;
}