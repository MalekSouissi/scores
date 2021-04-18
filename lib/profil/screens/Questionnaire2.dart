import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Questionnaire extends StatefulWidget {
  @override
  _QuestionnaireState createState() => _QuestionnaireState();
}

class _QuestionnaireState extends State<Questionnaire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // Colors.white.withOpacity(0.1),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black87,
          ),
        ),
      ),
      body: Material(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: const EdgeInsets.only(
              left: 20, top: 20.0, right: 20, bottom: 100.0),
          elevation: 3,
          shadowColor: Colors.grey,
          child: Column(
            children: [
              Container(
                width: 20,
                child: Divider(
                  color: Colors.grey[300],
                  thickness: 3,
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 38.0, horizontal: 20),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '1 . ',
                        style: TextStyle(
                          fontFamily: 'GandhiSans',
                          fontWeight: FontWeight.w900,
                          fontSize: 14.5,
                          color: Color(0xFF0A001F),
                        ),
                      ),
                      TextSpan(
                        text:
                        "lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit",
                        style: TextStyle(
                          fontFamily: 'GandhiSans',
                          fontSize: 14.5,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF0A001F),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
