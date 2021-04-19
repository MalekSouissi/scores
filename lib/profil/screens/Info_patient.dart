import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/formulaires/components/user_info.dart';
import 'package:scores/profil/components/Details.dart';
import 'package:scores/shared/bottomBar.dart';
import 'package:scores/shared/constants.dart';

import 'Detail_doc.dart';

class Patient_info extends StatefulWidget {
  @override
  _Patient_infoState createState() => _Patient_infoState();
}

class _Patient_infoState extends State<Patient_info> {
  BottomIcons bottomIcons = BottomIcons.list_alt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // Colors.white.withOpacity(0.1),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black87,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: const EdgeInsets.only(
                    left: 20, top: 20.0, right: 20, bottom:150.0),
                elevation: 3,
                shadowColor: Colors.grey,
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: User_Info(),
                    ),
                    Container(
                      width: 20,
                      child: Divider(
                        color: Colors.grey[300],
                        thickness: 3,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18.0, horizontal: 20),
                      child: Text(
                        "lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'GandhiSans',
                          color: Color(0xFF0A001F),
                        ),
                      ),
                    ),
                    Details(Tel: "20520852",ssm: "XXXXXXX", adresse: "paris,adresse2,7080",med: "tes",),


                     Padding(
                       padding: const EdgeInsets.symmetric(vertical:25.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Text("Formulaire remplis ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'GandhiSans',
                                    color: Color(0xFF5C20D9),
                                  ),),
                                Icon(Icons.article_sharp, color:Color(0xFF5C20D9) ,),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Envoyer formulaire ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'GandhiSans',
                                    color: Color(0xFF5C20D9),
                                  ),),
                                Icon(Icons.send, color:Color(0xFF5C20D9) ,),
                              ],
                            ),

                          ],
                        ),
                     ),

                  ],
                )
                //SizedBox
                ),
          ),
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
                          bottomIcons == BottomIcons.supervisor_account_sharp
                              ? true
                              : false,
                      icons: EvaIcons.peopleOutline,
                      text: "liste doctores"),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
