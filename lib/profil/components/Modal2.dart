import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/shared/constants.dart';

class Modal2 extends StatefulWidget {
  final String nom ;
  Modal2({@required this.nom});
  @override
  _Modal2State createState() => _Modal2State();
}

class _Modal2State extends State<Modal2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
              SizedBox(width: 10,),
              Text(
                "Dr " + widget.nom,
                style: TextStyle(
                  fontFamily: 'GandhiSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFF0A001F),
                ), //Textstyle
              ),

            ],
          ),
          new Radio(
            value: 0,
            activeColor: ActiveIconColor,
            groupValue: _radioValue,
            onChanged: _handleRadioValueChange,


          ),
        ],
      ),
    );
  }


  int _radioValue = 0;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }
}