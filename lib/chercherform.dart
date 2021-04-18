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
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.person_add_alt_1,
                    color: Color(0xFF707070),
                    size: 35,
                  ),
                  onPressed: () {},
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/profil_image.png'),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Recherche(),
            SizedBox(
              height: 30,
            ),
            Module(
              Text1: 'Module 1 : ',
              Text2: 'BILAN DE REEDUCATION\n PELVI-PERINEALE',
            ),
            SizedBox(
              height: 30,
            ),
            Module(
              Text1: 'Module 1 : ',
              Text2: 'BILAN DE REEDUCATION\n PELVI-PERINEALE',
            ),
            SizedBox(
              height: 30,
            ),
            Module(
              Text1: 'Module 1 : ',
              Text2: 'BILAN DE REEDUCATION\n PELVI-PERINEALE',
            ),
            SizedBox(
              height: 30,
            ),
            Module(
              Text1: 'Module 1 : ',
              Text2: 'BILAN DE REEDUCATION\n PELVI-PERINEALE',
            ),
          ],
        )),
      ),
    );
  }
}
