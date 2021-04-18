import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/shared/roundedbutton.dart';

class Tache_complete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Align(
              alignment: Alignment.center,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Bon travail !",
                      style: TextStyle(
                        fontFamily: 'GandhiSans',
                        fontWeight: FontWeight.w900,
                        fontSize: 45,
                        color: Color(0xFF0A001F),
                      ),
                    ),
                    TextSpan(
                      text: "Tache complète ",
                      style: TextStyle(
                        fontFamily: 'GandhiSans',
                        fontSize: 45,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF0A001F),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(

              child: Rounded_Button(
            title: "Retour a l'acceuil ",
          )),
        ],
      ),
    );
  }
}
