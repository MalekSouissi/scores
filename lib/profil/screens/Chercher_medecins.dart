import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/profil/components/card_patient.dart';
import 'package:scores/shared/constants.dart';

class Chercher_medecins extends StatefulWidget {
  @override
  _Chercher_medecinsState createState() => _Chercher_medecinsState();
}

class _Chercher_medecinsState extends State<Chercher_medecins> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "nom patient",
              style: TextStyle(
                fontSize: 26,
                fontFamily: 'GandhiSans',
                color: Color(0xFF0A001F),
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            new TextField(
              decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(40.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[800]),
                  hintText: "Type in your text",
                  suffixIcon: Icon(Icons.search),
                  fillColor: Colors.white70),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Card_patient(nom:"Leblanc",tel: "25555147",adresse: "Tunis",etat: "en attente",icons: Icons.timelapse,),
            Card_patient(nom:"Leblanc",tel: "25555147",adresse: "Tunis",etat: "demande acceptée ",icons: Icons.done,),
            Card_patient(nom:"Leblanc",tel: "25555147",adresse: "Tunis",etat: "ajouter ",icons: Icons.person_add_alt_1,)
          ],
        ),
      ),
    );
  }
}
