import 'package:flutter/material.dart';
import 'chercherform.dart';
import 'formulaires/screens/PageFormulaire.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChercherForm(),
    );
  }



}
