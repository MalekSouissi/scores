import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/formulaires/components/user_info.dart';
import 'package:scores/formulaires/components/header.dart';
import 'package:scores/formulaires/components/info_container.dart';
import 'package:scores/formulaires/screens/Formulaires.dart';
import 'package:scores/shared/appbar.dart';
import 'package:scores/shared/bottomBar.dart';
import 'package:scores/shared/constants.dart';

class DocFormulaire extends StatefulWidget {
  @override
  _DocFormulaireState createState() => _DocFormulaireState();
}

enum BottomIcons { list_alt, home, supervisor_account_sharp }

class _DocFormulaireState extends State<DocFormulaire> {
  BottomIcons bottomIcons = BottomIcons.list_alt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar:PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*0.08),
          child: CustomAppBar(isdoctor: true,changeIcon: true,)),

      body:
      NestedTabBar(isdoctor:false, header: Header(header:Padding(
        padding: const EdgeInsets.all(8.0),
        child: User_Info(username: 'Dr Hanen',),
      ) ),),
    );
  }

}