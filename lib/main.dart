import 'package:flutter/material.dart';
import 'package:scores/profil/screens/Patient_inf.dart';
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
      home: PageFormulaire(isdoctor: true,),
    );
  }



}
