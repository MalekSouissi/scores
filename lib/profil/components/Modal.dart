import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Modal extends StatefulWidget {
  final String nom ;
  Modal({@required this.nom});
  @override
  _ModalState createState() => _ModalState();
}

class _ModalState extends State<Modal> {
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blueGrey, //NetworkImage
                radius: 30,
              ),
              SizedBox(width: 5,),
              Text(
                "Dr " + widget.nom,
                style: TextStyle(
                  fontFamily: 'GandhiSans',
                  fontWeight: FontWeight.w900,
                  fontSize: 17,
                  color: Color(0xFF0A001F),
                ),//Textstyle
              ),

            ],
          ),
          Icon(Icons.remove_red_eye_outlined, size: 30,
            color: Colors.black45,),
        ],
      ),
    );
  }
}
