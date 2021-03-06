import 'package:flutter/material.dart';
import 'package:scores/authentification/mdpoubli%C3%A9.dart';
import 'package:scores/shared/roundedbutton.dart';
import 'package:scores/widget/inputfield.dart';


import 'chooseprofil.dart';

class Authentification extends StatefulWidget {
  @override
  _AuthentificationState createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 200),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Center(
                            child: Text(
                              's\'authentifier',
                              style: TextStyle(
                                fontFamily: 'GandhiSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xFF0A001F),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        InputField(
                          inputHint: 'jhondoe@email.com',
                          obscure: false,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InputField(
                          inputHint: '......',
                          obscure: true,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MdpOublie()));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: Text(
                              'Mot de passe oubli???',
                              style: TextStyle(
                                  color: Color(0xFF5C20D9),
                                  fontFamily: 'Arial',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Choose_Profil()));
                      },
                      child: Text(
                        'Vous n\'avez pas de compte ?',
                        style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 15,
                            color: Color(0xFF0A001F)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Rounded_Button(
                    onpressed: () {},
                    title: 'CONTINUE',
                  ),
                ],
              ),
            ),
            Positioned(
              top: 130,
              left: .0,
              right: .0,
              child: Center(
                child: Image.asset(
                  'assets/logo.png',
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
