import 'package:flutter/material.dart';

class Rounded_Button extends StatefulWidget {

  final String title;
  final Function onpressed;

  const Rounded_Button({Key key, @required this.title, this.onpressed}) : super(key: key);

  @override
  _Rounded_ButtonState createState() => _Rounded_ButtonState();
}

class _Rounded_ButtonState extends State<Rounded_Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 20),
        onPressed: widget.onpressed,
        color: Color(0xFFE84927),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Arial',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
