import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/shared/navbar.dart';

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
      body: Stack(
        children: <Widget>[
          bottomIcons == BottomIcons.list_alt
              ? Center(
            child: Text(
              "Hi, this is forms page",
              style: TextStyle(fontSize: 18),
            ),
          )
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
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 30),
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
}