import 'package:flutter/material.dart';
import 'package:scores/authentification/sauthentifier.dart';
import 'package:scores/widget/iconroundedbutton.dart';
import 'package:scores/widget/inputfield.dart';
import 'package:scores/widget/roundedbutton.dart';

class SignUp2 extends StatefulWidget {
  @override
  _SignUp2State createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 75, bottom: 10),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/logo.png',
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.25,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                height: MediaQuery.of(context).size.height * 0.68,
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0, 10),
                      blurRadius: 30,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                          children: <TextSpan> [
                            TextSpan(
                              text: 'étape ',
                              style: TextStyle(
                                fontFamily: 'GandhiSans',
                                fontSize: 14.5,
                                color: Color(0xFF0A001F),
                              ),
                            ),
                            TextSpan(
                              text: '2/2',
                              style: TextStyle(
                                fontFamily: 'GandhiSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 14.5,
                                color: Color(0xFF0A001F),
                              ),
                            ),
                          ]
                      ),
                    ),

                    InputField(
                      inputHint: 'nom',
                      obscure: false,
                    ),
                    InputField(
                      inputHint: 'Fax',
                      obscure: false,
                    ),
                    InputField(
                      inputHint: 'métier',
                      obscure: false,
                    ),

                    InputField(
                      inputHint: 'ADELI',
                      obscure: false,
                    ),
                    InputField(
                      inputHint: 'RPPS',
                      obscure: false,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Authentification()));
                  },
                  child: Text(
                    'Vous avez déjà de compte ?',
                    style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 15,
                        color: Color(0xFF5C20D9)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              IconRounded_Button(
                onpressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Authentification()));
                },
                title: 'CONTINUE',
                image: 'assets/next.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
