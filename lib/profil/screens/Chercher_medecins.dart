import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/profil/components/card_patient.dart';
import 'package:scores/shared/appbar.dart';
import 'package:scores/shared/recherche.dart';
class Chercher_medecins extends StatefulWidget {
  @override
  _Chercher_medecinsState createState() => _Chercher_medecinsState();
}

class _Chercher_medecinsState extends State<Chercher_medecins> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*0.08),
          child: CustomAppBar()),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          children: [
            Text(
              "Chercher medecins",
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
            Recherche(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              height: MediaQuery.of(context).size.height *0.6,
              child: ListView(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Card_patient(nom:"Leblanc",tel: "25555147",adresse: "Tunis",etat: "en attente",icons: Icons.timelapse,),
                  Card_patient(nom:"Leblanc",tel: "25555147",adresse: "Tunis",etat: "demande acceptée ",icons: Icons.done,),
                  Card_patient(nom:"Leblanc",tel: "25555147",adresse: "Tunis",etat: "ajouter ",icons: Icons.person_add_alt_1,),
                  Card_patient(nom:"Leblanc",tel: "25555147",adresse: "Tunis",etat: "ajouter ",icons: Icons.person_add_alt_1,),
                  Card_patient(nom:"Leblanc",tel: "25555147",adresse: "Tunis",etat: "ajouter ",icons: Icons.person_add_alt_1,),
                  Card_patient(nom:"Leblanc",tel: "25555147",adresse: "Tunis",etat: "ajouter ",icons: Icons.person_add_alt_1,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
