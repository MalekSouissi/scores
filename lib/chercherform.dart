import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widget/module.dart';
import 'shared/recherche.dart';

class ChercherForm extends StatefulWidget {
  @override
  _ChercherFormState createState() => _ChercherFormState();
}

class _ChercherFormState extends State<ChercherForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: Container(
        color: Color(0xFFF6F6F6),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
        Recherche(),
        SizedBox(
          height: 30,
        ),
        Module(
          Text1: 'Module 1 : ',
          Text2: 'BILAN DE REEDUCATION\n PELVI-PERINEALE',
          isdoctor: true,
          isfinished: false,
        ),
        SizedBox(
          height: 30,
        ),
        Module(
          Text1: 'Module 1 : ',
          Text2: 'BILAN DE REEDUCATION\n PELVI-PERINEALE',
          isdoctor: true,
          isfinished: false,
        ),
        SizedBox(
          height: 30,
        ),
        Module(
          Text1: 'Module 1 : ',
          Text2: 'BILAN DE REEDUCATION\n PELVI-PERINEALE',
          isdoctor: true,
          isfinished: false,
        ),
        SizedBox(
          height: 30,
        ),
        Module(
          Text1: 'Module 1 : ',
          Text2: 'BILAN DE REEDUCATION\n PELVI-PERINEALE',
          isdoctor: true,
          isfinished: false,
        ),
          ],
        ),
      ),
    );
  }
}
