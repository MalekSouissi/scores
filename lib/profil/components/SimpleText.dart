import 'package:flutter/cupertino.dart';

class SimpleText extends StatefulWidget {
  final String text;
  SimpleText({@required this.text});

  @override
  _SimpleTextState createState() => _SimpleTextState();
}

class _SimpleTextState extends State<SimpleText> {
  @override
  Widget build(BuildContext context) {
    return Text(  widget.text,     style: TextStyle(
        fontFamily: 'GandhiSans',
        fontWeight: FontWeight.w400,
        fontSize: 14.5,
        color: Color(0xFF0A001F),
      ),);
  }
}
