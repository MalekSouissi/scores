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
                              "Dr "+ widget.nom,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[900],
                                fontWeight: FontWeight.w700,
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
                                color: Colors.grey[900],
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "adresse: "+widget.adresse,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey[900],
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
                        fontSize: 7,
                        textBaseline:TextBaseline.ideographic ,
                        color: Colors.grey[700],
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