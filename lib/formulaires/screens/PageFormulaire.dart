import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scores/chercherform.dart';
import 'package:scores/formulaires/components/header.dart';
import 'package:scores/formulaires/screens/Formulaires.dart';
import 'package:scores/profil/screens/Acceuil.dart';
import 'package:scores/profil/screens/List_doc.dart';
import 'package:scores/shared/appbar.dart';
import 'package:scores/shared/bottomBar.dart';
import 'package:scores/shared/constants.dart';

class PageFormulaire extends StatefulWidget {
  bool isdoctor ;
PageFormulaire({this.isdoctor});
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
      appBar:PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*0.08),
          child: CustomAppBar(changeIcon: true,isdoctor: widget.isdoctor,)),

      body:
      Stack(
        children: <Widget>[
          bottomIcons == BottomIcons.list_alt
              ? Center(child:_showForm(widget.isdoctor)
          )
              : Container(),
          bottomIcons == BottomIcons.home
              ? Center(
            child:Acceuil(noForms: false,isdoctor:widget.isdoctor,),
          )
              : Container(),
          bottomIcons == BottomIcons.supervisor_account_sharp
              ? Center(
            child: List_doc(isdoctor:! widget.isdoctor,),
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
  _showForm(isdoctor){
    return isdoctor?ChercherForm():NestedTabBar(isdoctor:isdoctor,header: Header(
      header: Padding(
        padding: const EdgeInsets.only(left: 45),
        child: Text(
          'Mes formulaires',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
        ),
      ),
    ),);
  }
}