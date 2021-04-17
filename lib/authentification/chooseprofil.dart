import 'package:flutter/material.dart';
import 'package:scores/authentification/signup1.dart';
import 'package:scores/shared/roundedbutton.dart';
import 'package:scores/widget/chooseavatar.dart';


class Choose_Profil extends StatefulWidget {
  @override
  _Choose_ProfilState createState() => _Choose_ProfilState();
}

class _Choose_ProfilState extends State<Choose_Profil> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/logo.png',
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.25,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Choose_Avatar(
                  image: 'assets/medicin.png',
                  title: 'médicin',
                  ontap: () {
                    setState(() {
                      clicked = true;
                    });
                  },
                ),
                Choose_Avatar(
                  image: 'assets/patient.png',
                  title: 'patient',
                  ontap: () {},
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Rounded_Button(
              title: 'CONTINUE',
              onpressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SignUp1()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
