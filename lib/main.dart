import 'package:flutter/material.dart';
import 'package:scores/authentification/chooseprofil.dart';
import 'package:scores/authentification/doctor/signupdoctor.dart';
import 'package:scores/authentification/splashscreen.dart';
import 'package:scores/profil/screens/Questionnaire.dart';
import 'package:scores/profil/screens/Tache_complete.dart';

import 'formulaires/screens/PageFormulaire.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tache_complete(),
    );
  }
}
