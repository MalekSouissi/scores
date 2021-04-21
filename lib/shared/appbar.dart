import 'package:flutter/material.dart';
import 'package:scores/profil/screens/Chercher_medecins.dart';
import 'package:scores/profil/screens/Chercher_patients.dart';
import 'package:scores/profil/screens/Details_patient.dart';

import 'constants.dart';


class CustomAppBar extends StatelessWidget {
  final bool changeIcon ;
  final bool isdoctor ;
  CustomAppBar({this.changeIcon,this.isdoctor});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      //toolbarHeight: 120,
      leading:changeIcon? GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>isdoctor?Chercher_patients():Chercher_medecins()));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Icon(Icons.person_add_alt_1, size: 30,
            color: DeactiveIconColor,),
        ),
      ):GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Icon(Icons.arrow_back, size: 30,
              color: DeactiveIconColor,),
          )),
      actions: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Details_patient(isdoctor: isdoctor,)));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.black87,
            ),
          ),
        )
      ],
      backgroundColor: Colors.transparent,
      // Colors.white.withOpacity(0.1),
      elevation: 0,
    );
  }
}
