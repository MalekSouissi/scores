import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/formulaires/screens/Formulaires.dart';
import 'package:scores/shared/appbar.dart';
import 'package:scores/shared/bottomBar.dart';
import 'package:scores/shared/constants.dart';

class PageFormulaire extends StatefulWidget {
  @override
  _PageFormulaireState createState() => _PageFormulaireState();
}

enum BottomIcons { list_alt, home, supervisor_account_sharp }

class _PageFormulaireState extends State<PageFormulaire> {
  BottomIcons bottomIcons = BottomIcons.list_alt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar:_buildAppBar('Mes formulaires'),

      body:
      Stack(
        children: <Widget>[
          bottomIcons == BottomIcons.list_alt
              ? Center(child: NestedTabBar())
              : Container(),
          bottomIcons == BottomIcons.home
              ? Center(
            child: Text(
              "Hi, this is home page",
              style: TextStyle(fontSize: 18),
            ),
          )
              : Container(),
          bottomIcons == BottomIcons.supervisor_account_sharp
              ? Center(
            child: Text(
              "Hi, this is list doctors/patients page",
              style: TextStyle(fontSize: 18),
            ),
          )
              : Container(),
          // bottomIcons == BottomIcons.Account
          //     ? Center(
          //   child: Text(
          //     "Hi, this is account page",
          //     style: TextStyle(fontSize: 18),
          //   ),
          // )
          //     : Container(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.list_alt;
                        });
                      },
                      bottomIcons:
                      bottomIcons == BottomIcons.list_alt ? true : false,
                      icons: Icons.list_alt,
                      text: "mes formulaires"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.home;
                        });
                      },
                      bottomIcons:
                      bottomIcons == BottomIcons.home ? true : false,
                      icons: EvaIcons.homeOutline,
                      text: "acceuil"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.supervisor_account_sharp;
                        });
                      },
                      bottomIcons:
                      bottomIcons == BottomIcons.supervisor_account_sharp ? true : false,
                      icons: EvaIcons.peopleOutline,
                      text: "liste doctores"),
                  // BottomBar(
                  //     onPressed: () {
                  //       setState(() {
                  //         bottomIcons = BottomIcons.Account;
                  //       });
                  //     },
                  //     bottomIcons:
                  //     bottomIcons == BottomIcons.Account ? true : false,
                  //     icons: EvaIcons.personOutline,
                  //     text: "Account"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  PreferredSize _buildAppBar(String title){
    return  PreferredSize(
      preferredSize: Size(150, 140),
      child: AppBar(
        //toolbarHeight: 120,
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
        flexibleSpace:Container(
          margin: EdgeInsets.only(top: 100,left: 45),
          child: Text(
            title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
          ),
        ),

      ),
    );
  }
}