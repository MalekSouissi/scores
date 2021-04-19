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

class UserFormulaire extends StatefulWidget {
  @override
  _UserFormulaireState createState() => _UserFormulaireState();
}

enum BottomIcons { list_alt, home, supervisor_account_sharp }

class _UserFormulaireState extends State<UserFormulaire> {
  BottomIcons bottomIcons = BottomIcons.list_alt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar:PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*0.08),
          child: CustomAppBar()),

      body:
      NestedTabBar(header: Header(header:Padding(
        padding: const EdgeInsets.all(8.0),
        child: User_Info(),
      ) ),),
    );
  }

  AppBar _buildAppBar(String title){
    return  AppBar(
      toolbarHeight: 70,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
        child: Icon(Icons.person_add_alt_1,size:30,
          color:DeactiveIconColor ,),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 16),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black87,
          ),
        )
      ],
      backgroundColor: Colors.transparent, // Colors.white.withOpacity(0.1),
      elevation: 0,
      // flexibleSpace:Container(
      //   margin: EdgeInsets.only(top: 100,left: 45),
      //   child: Text(
      //     title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
      //   ),
      // ),

    );
  }
}