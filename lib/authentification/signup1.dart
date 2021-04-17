import 'package:flutter/material.dart';
import 'package:scores/authentification/doctor/signup2.dart';
import 'package:scores/authentification/sauthentifier.dart';
import 'package:scores/shared/iconroundedbutton.dart';
import 'package:scores/widget/inputfield.dart';

class SignUp1 extends StatefulWidget {
  @override
  _SignUp1State createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
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
                height: MediaQuery.of(context).size.height*0.65,
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
                              text: '1/2',
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
                    Center(
                      child: Text(
                        'Créer un compte',
                        style: TextStyle(
                          fontFamily: 'GandhiSans',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF0A001F),
                        ),
                      ),
                    ),
                    InputField(
                      inputHint: 'nom',
                      obscure: false,
                    ),
                    InputField(
                      inputHint: 'prénom',
                      obscure: false,
                    ),
                    InputField(
                      inputHint: 'email',
                      obscure: false,
                    ),
                    InputField(
                      inputHint: 'mot de passe',
                      obscure: true,
                    ),
                    InputField(
                      inputHint: 'confirmez mot de passe',
                      obscure: true,
                    ),
                    InputField(
                      inputHint: 'adresse',
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
                          builder: (context) => SignUp2()));
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
