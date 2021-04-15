import 'package:flutter/material.dart';

class IconRounded_Button extends StatefulWidget {

  final String title;
  final String image;

  const IconRounded_Button({Key key, @required this.title, this.image}) : super(key: key);

  @override
  _IconRounded_ButtonState createState() => _IconRounded_ButtonState();
}

class _IconRounded_ButtonState extends State<IconRounded_Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      child: RaisedButton(
        onPressed: () {},
        padding: EdgeInsets.fromLTRB(120, 20, 10, 20),
        color: Color(0xFFE84927),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
              ),
            ),
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
