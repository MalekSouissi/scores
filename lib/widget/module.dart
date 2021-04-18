import 'package:flutter/material.dart';

class Module extends StatefulWidget {

  // ignore: non_constant_identifier_names
  final String Text1;
  // ignore: non_constant_identifier_names
  final String Text2;

  const Module({Key key, this.Text1, this.Text2}) : super(key: key);

  @override
  _ModuleState createState() => _ModuleState();
}

class _ModuleState extends State<Module> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: Offset(0, 10),
              blurRadius: 30
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: widget.Text1,
                style: TextStyle(
                  fontFamily: 'GandhiSans',
                  fontSize: 15,
                  color: Color(0xFF0A001F),
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: widget.Text2
                    .toUpperCase(),
                style: TextStyle(
                  fontFamily: 'GandhiSans',
                  fontSize: 15,
                  color: Color(0xFF0A001F),
                ),
              ),
            ]),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.185,
            decoration: BoxDecoration(
              color: Color(0xFFE7E6E9),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.send_outlined,
                  color: Color(0xFF707070),
                  size: 25,
                ),
                Text(
                  'envoyez',
                  style: TextStyle(
                    fontFamily: 'GandhiSans',
                    fontSize: 12.5,
                    color: Color(0xFF707070),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

