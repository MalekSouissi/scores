import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/formulaires/components/user_info.dart';
import 'package:scores/formulaires/screens/Formulaires.dart';
import 'package:scores/shared/appbar.dart';
import 'package:scores/shared/bottomBar.dart';
import 'package:scores/shared/constants.dart';
import 'Acceuil.dart';
import 'List_doc.dart';

class Details_doc extends StatefulWidget {
  @override
  _Details_docState createState() => _Details_docState();
}
enum BottomIcons { list_alt, home, supervisor_account_sharp }
class _Details_docState extends State<Details_doc> {
  BottomIcons bottomIcons = BottomIcons.list_alt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*0.08),
            child: CustomAppBar(changeIcon: false,)),
      body:
          Stack(
            children: [

              Container(
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  margin: const EdgeInsets.only(left:20,top:20.0,right: 20,bottom:100.0),
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
                     padding: const EdgeInsets.all(38.0),
                     child: Text("lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit",
                       style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.w400,
                         fontFamily: 'GandhiSans',
                         color: Color(0xFF0A001F),
                       ),),
                   ),
                   Align(
                     alignment: Alignment.bottomLeft,
                     child: Padding(
                       padding: const EdgeInsets.only(left:38.0),
                       child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("details",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey[900],
                                    fontWeight: FontWeight.w400,
                                  ),),
                                Text("Téléphone",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey[900],
                                    fontWeight: FontWeight.w400,
                                  ),),
                                Text("adresse",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey[900],
                                    fontWeight: FontWeight.w400,
                                  ),),
                                Text("...",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey[900],
                                    fontWeight: FontWeight.w400,
                                  ),),
                              ],
                            ),
                     ),
                   ),


                    ],
                  )
                  //SizedBox
                ),
              ),
              // Align(
              //   alignment: Alignment.bottomLeft,
              //   child: Container(
              //     color: Colors.white,
              //     padding: EdgeInsets.only(left: 24, right: 24, bottom: 20),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: <Widget>[
              //         BottomBar(
              //             onPressed: () {
              //               setState(() {
              //                 bottomIcons = BottomIcons.list_alt;
              //               });
              //             },
              //             bottomIcons:
              //             bottomIcons == BottomIcons.list_alt ? true : false,
              //             icons: Icons.list_alt,
              //             text: "mes formulaires"),
              //         BottomBar(
              //             onPressed: () {
              //               setState(() {
              //                 bottomIcons = BottomIcons.home;
              //               });
              //             },
              //             bottomIcons:
              //             bottomIcons == BottomIcons.home ? true : false,
              //             icons: EvaIcons.homeOutline,
              //             text: "acceuil"),
              //         BottomBar(
              //             onPressed: () {
              //               setState(() {
              //                 bottomIcons = BottomIcons.supervisor_account_sharp;
              //               });
              //             },
              //             bottomIcons:
              //             bottomIcons == BottomIcons.supervisor_account_sharp ? true : false,
              //             icons: EvaIcons.peopleOutline,
              //             text: "liste docteurs"),
              //       ],
              //     ),
              //   ),
              // )
            ],

          ),



    );
  }
  }

