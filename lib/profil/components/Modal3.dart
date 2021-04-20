import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/shared/constants.dart';

class Modal3 extends StatefulWidget {
  final String text;
  Modal3({@required this.text});
  @override
  _Modal3State createState() => _Modal3State();
}

class _Modal3State extends State<Modal3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(

                    width: MediaQuery.of(context).size.width * 0.5,
                    child: RichText(
                      text: TextSpan(
                        text: 'Module 1 : ',
                          style: TextStyle(
                            fontFamily: 'GandhiSans',
                            fontWeight: FontWeight.w900,
                            fontSize: 14,
                            color: Color(0xFF0A001F),
                          ),
                        children: <TextSpan>[

                          TextSpan(text:  widget.text,
                            style: TextStyle(
                              fontFamily: 'GandhiSans',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xFF0A001F),
                            ),),
                        ],
                      ),
                    )
                  ),
                ],
              ),
            ),
            new Radio(
              value: 0,
              activeColor: ActiveIconColor,
              groupValue: _radioValue,
              onChanged: _handleRadioValueChange,
            ),
          ],
        ));
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
