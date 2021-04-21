import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/profil/components/card_patient.dart';
import 'package:scores/shared/appbar.dart';
import 'package:scores/shared/recherche.dart';
class Chercher_patients extends StatefulWidget {
  @override
  _Chercher_patientsState createState() => _Chercher_patientsState();
}

class _Chercher_patientsState extends State<Chercher_patients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*0.08),
          child: CustomAppBar(changeIcon: false,)),
      body: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 30),
        child: Column(
          children: [
            Text(
              "demande des patients",
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'GandhiSans',
                color: Color(0xFF0A001F),
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              height: MediaQuery.of(context).size.height *0.7,
              child: ListView(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Card_patient(nom:"patient2",tel: "25555147",adresse: "Tunis",etat: "demande acceptée ",icons: Icons.done,),
                  Card_patient(nom:"patient3",tel: "25555147",adresse: "Tunis",etat: "demande acceptée ",icons: Icons.done,),
                  Card_patient(nom:"patient4",tel: "25555147",adresse: "Tunis",etat: "demande acceptée ",icons: Icons.done,),
                  Card_patient(nom:"patient5",tel: "25555147",adresse: "Tunis",etat: "demande acceptée ",icons: Icons.done,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
