import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/tab_controller_screen.dart';
import './helper/http_override.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(SnipeITFrontEnd());
}

class SnipeITFrontEnd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 115, 183, 1),
        backgroundColor: Color.fromRGBO(34, 34, 34, 1),
        accentColor: Color.fromRGBO(34, 45, 50, 1),
        accentColorBrightness: Brightness.dark,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: "Source Sans Pro",
            fontWeight: FontWeight.normal,
            fontSize: 28,
            color: Colors.white,
          ),
          headline6: TextStyle(
            fontFamily: "Source Sans Pro",
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Colors.white,
          ),
          subtitle1: TextStyle(
            fontFamily: "Source Sans Pro",
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            fontFamily: "Segoe UI",
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),
          bodyText2: TextStyle(
            fontFamily: "Segoe UI",
            fontWeight: FontWeight.normal,
            fontSize: 16,
            color: Colors.white,
          ),
          button: TextStyle(
            fontFamily: "Segoe UI",
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      home: TabScreenController(),
    );
  }
}
