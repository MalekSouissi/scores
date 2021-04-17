import 'package:flutter/material.dart';

class IconRounded_Button extends StatefulWidget {

  final String title;
  final String image;
  final Function onpressed;

  const IconRounded_Button({Key key, @required this.title, this.image, this.onpressed}) : super(key: key);

  @override
  _IconRounded_ButtonState createState() => _IconRounded_ButtonState();
}

class _IconRounded_ButtonState extends State<IconRounded_Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      child: RaisedButton(
        onPressed: widget.onpressed,
        padding: EdgeInsets.symmetric(vertical: 13),
        color: Color(0xFFE84927),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Arial',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width*0.15,),
            Image.asset(
              widget.image,
              height: MediaQuery.of(context).size.height * 0.04,
              width: MediaQuery.of(context).size.width * 0.2,
            ),
          ],
        ),
      ),
    );
  }
}
