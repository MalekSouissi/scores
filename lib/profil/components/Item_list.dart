import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/profil/screens/Chercher_medecins.dart';
import 'package:scores/profil/screens/Detail_doc.dart';
import 'package:scores/profil/screens/Details_patient.dart';

class Item_list extends StatefulWidget {
  final String text;
  final String image;
  Item_list(
      {@required this.image,
        @required this.text});

  @override
  _Item_listState createState() => _Item_listState();
}

class _Item_listState extends State<Item_list> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  () {
        Navigator.push(context, MaterialPageRoute(builder: ((context)=>Details_doc())));
      },
      child: Card(
        margin: const EdgeInsets.only(top: 20.0),
        elevation: 5,
        shadowColor: Colors.grey,



        child: SizedBox(

            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.02,
                ),
                CircleAvatar(

                  radius: 35,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                       widget.image), //NetworkImage
                    radius: 100,
                  ),
                ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.02,
                  ),
                  Text(
                 "Dr "+ widget.text,
                    style: TextStyle(
                      fontFamily: 'GandhiSans',
                      fontWeight: FontWeight.w900,
                      fontSize: 17,
                      color: Color(0xFF0A001F),
                    ),//Textstyle
                ), //Text
                 //SizedBox
               //SizedBox
              ],
            ), //Column
           //Padding
        ), //SizedBox
      ),
    );
  }
}
