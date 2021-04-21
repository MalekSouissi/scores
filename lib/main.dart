import 'package:flutter/material.dart';
import 'package:scores/profil/screens/Patient_inf.dart';
import 'package:scores/profil/screens/Recap.dart';
import 'chercherform.dart';


void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Recap(),
    );
  }



}
