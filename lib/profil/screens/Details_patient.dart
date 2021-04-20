import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/profil/components/Info_patient.dart';
import 'package:scores/shared/constants.dart';
import 'package:scores/shared/roundedbutton.dart';

class Details_patient extends StatefulWidget {
  bool isdoctor;
  Details_patient({this.isdoctor});
  @override
  _Details_patientState createState() => _Details_patientState();
}

class _Details_patientState extends State<Details_patient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38,vertical: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                widget.isdoctor?Text("nom docteur",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.grey[900],
                    fontWeight: FontWeight.w700,
                  ), ):Text("nom patient",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.grey[900],
                    fontWeight: FontWeight.w700,
                  ), ),
                CircleAvatar(
                  radius: 43,
                  backgroundColor: Colors.black87,
                ),
              ],
            ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
           child: Column(
             children: [
               Info(info:"Profile image"),
               Info(info:"nom"),
               Info(info:"Prénom"),
               Info(info:"mot de passe"),
               Info(info:"email"),
               Info(info:"Téléphone"),
               Info(info:"SSN"),



             ],
           )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Rounded_Button(title: "Confirmer",onpressed: (){
              },),
            )
          ],
        ),
      ),
    );
  }
}
