import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class AppLocalizations {

  AppLocalizations([this.locale]);

   Locale? locale;

  static AppLocalizations? of(BuildContext context) {

     return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  late Map<String, String> _sentences;

  Future<bool> load() async {

    String data = await rootBundle.loadString('assets/i18n/${locale!.languageCode}.json');
    Map<String, dynamic> _result = json.decode(data);

    _sentences =  {};
    _result.forEach((String key, dynamic value) {
      _sentences[key] = value.toString();
    });

    return true;

  }

  String? trans(String key) {
    return _sentences[key];
  }

  dynamic select (Map<String, dynamic> options) {

    return options[locale!.languageCode];

  }

}
