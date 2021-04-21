import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/formulaires/components/user_info.dart';
import 'package:scores/formulaires/components/header.dart';
import 'package:scores/formulaires/components/info_container.dart';
import 'package:scores/formulaires/screens/Formulaires1.dart';
import 'package:scores/shared/appbar.dart';
import 'package:scores/shared/bottomBar.dart';
import 'package:scores/shared/constants.dart';

class PatientFormulaire extends StatefulWidget {
  final bool isdoctor ;
  PatientFormulaire({this.isdoctor});
  @override
  _PatientFormulaireState createState() => _PatientFormulaireState();
}

enum BottomIcons { list_alt, home, supervisor_account_sharp }

class _PatientFormulaireState extends State<PatientFormulaire> {
  BottomIcons bottomIcons = BottomIcons.list_alt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar:PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*0.08),
          child: CustomAppBar(isdoctor: true,changeIcon: true,)),

      body:
      NestedTabBarDocteur(isdoctor:false, header: Header(header:Padding(
        padding: const EdgeInsets.all(8.0),
        child: User_Info(username: 'Salim',),
      ) ),),
    );
  }

}