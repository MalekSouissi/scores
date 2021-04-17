import 'package:flutter/material.dart';
import 'file:///C:/Users/ASUSI7/AndroidStudioProjects/scores/lib/authentification/signup1.dart';
import 'package:scores/widget/chooseavatar.dart';
import 'package:scores/widget/roundedbutton.dart';

class Choose_Profil extends StatefulWidget {
  @override
  _Choose_ProfilState createState() => _Choose_ProfilState();
}

class _Choose_ProfilState extends State<Choose_Profil> {
  bool clickedm = false;
  bool clickedp = false;

  Color _ContainerColorm = Colors.white;
  Color _TextColorm = Colors.black;

  Color _ContainerColorp = Colors.white;
  Color _TextColorp = Colors.black;

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
                      clickedm = true;
                     if(clickedm == true) {
                       _ContainerColorm = Color(0xFFE84927);
                       _TextColorm = Colors.white;
                       _ContainerColorp = Colors.white;
                       _TextColorp = Colors.black;
                     }
                    });
                  },
                  ContainerColor:_ContainerColorm,
                  TextColor: _TextColorm,
                ),
                Choose_Avatar(
                  image: 'assets/patient.png',
                  title: 'patient',
                  ontap: () {
                    setState(() {
                      clickedp = true;
                      if(clickedp == true) {
                        _ContainerColorp = Color(0xFFE84927);
                        _TextColorp = Colors.white;
                        _ContainerColorm = Colors.white;
                        _TextColorm = Colors.black;
                      }
                    });
                  },
                  ContainerColor:_ContainerColorp,
                  TextColor: _TextColorp,
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
