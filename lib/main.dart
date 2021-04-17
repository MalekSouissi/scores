import 'package:flutter/material.dart';
import 'package:scores/authentification/chooseprofil.dart';
import 'package:scores/authentification/doctor/signupdoctor.dart';
import 'package:scores/authentification/splashscreen.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}
