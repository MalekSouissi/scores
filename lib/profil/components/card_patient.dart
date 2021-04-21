import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/shared/constants.dart';

class Card_patient extends StatefulWidget {
  final String nom ;
  final String tel;
  final String adresse;
  IconData icons;

  final String etat;
  Card_patient({@required this.nom,this.tel,this.adresse,@required this.icons,this.etat});
  @override
  _Card_patientState createState() => _Card_patientState();
}

class _Card_patientState extends State<Card_patient> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0),
      child: Card(
        elevation: 2,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          child: Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black87,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.nom,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'GandhiSans',
                                color: Color(0xFF0A001F),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.01,
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tel° "+widget.tel,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'GandhiSans',
                                color: Color(0xFF0A001F),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "adresse: "+widget.adresse,
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'GandhiSans',
                                color: Color(0xFF0A001F),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      widget.icons,
                      size: 30,
                      color: DeactiveIconColor,
                    ),
                    Text(

                      widget.etat,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'GandhiSans',
                        color: Color(0xFF0A001F),
                        fontSize: 7,
                        textBaseline:TextBaseline.ideographic ,

                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
