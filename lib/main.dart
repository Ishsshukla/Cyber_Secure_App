// import 'dart:html';

import 'package:cyber_secure/screens/analysis.dart';
import 'package:cyber_secure/screens/databreach.dart';
import 'package:cyber_secure/screens/disclamer.dart';
import 'package:cyber_secure/screens/documentUpload.dart';
import 'package:cyber_secure/screens/feed.dart';
import 'package:cyber_secure/screens/guidline.dart';
import 'package:cyber_secure/screens/home.dart';
import 'package:cyber_secure/screens/incident.dart';
import 'package:cyber_secure/screens/language.dart';
import 'package:cyber_secure/screens/laywer.dart';
import 'package:cyber_secure/screens/localStrings.dart';
import 'package:cyber_secure/screens/loginscreen.dart';
import 'package:cyber_secure/screens/notification.dart';
import 'package:cyber_secure/screens/profile.dart';
import 'package:cyber_secure/screens/splash_screen.dart';
import 'package:cyber_secure/screens/test.dart';
import 'package:cyber_secure/screens/trends.dart';
import 'package:cyber_secure/screens/trendsSearch.dart';
import 'package:cyber_secure/screens/utilities.dart';
import 'package:flutter/material.dart';
import 'package:google_gemini/google_gemini.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:cyber_secure/screens/cyberMitrBot.dart';
import 'package:cyber_secure/screens/navbar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await PreferencesManager.init(); // Initialize PreferencesManager
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // translations: LocalString(),
      // locale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

// class PreferencesManager {
//   late SharedPreferences _prefs;

//   Future<void> init() async {
//     _prefs = await SharedPreferences.getInstance();
//   }

//   String get email => _prefs.getString('email') ?? "";
//   String get name => _prefs.getString('name') ?? "";
// }

// final preferencesManager = PreferencesManager();

class PreferencesManager {
  static late PreferencesManager _instance;
  late SharedPreferences _prefs;

  // private constructor
  PreferencesManager._();

  // factory method to access the singleton instance
  factory PreferencesManager() {
    return _instance;
  }

  // initialize the singleton instance
  static Future<void> init() async {
    _instance = PreferencesManager._();
    _instance._prefs = await SharedPreferences.getInstance();
  }

  // add methods for storing and retrieving data
  String get email => _prefs.getString('email') ?? '';
  set email(String value) => _prefs.setString('email', value);

  String get name => _prefs.getString('name') ?? '';
  set name(String value) => _prefs.setString('name', value);
  String get token => _prefs.getString('token') ?? '';
  set token(String value) => _prefs.setString('token', value);
  String get ack => _prefs.getString('ack') ?? '';
  set ack(String value) => _prefs.setString('ack', value);

  // add more methods as needed
}
