import 'package:flutter/material.dart';
import 'package:scores/formulaires/screens/PageFormulaire.dart';

import 'formulaires/screens/Formulaire_doc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageFormulaire(),
    );
  }
}

