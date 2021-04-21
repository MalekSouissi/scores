import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:scores/formulaires/components/form_info.dart';
import 'package:scores/formulaires/components/user_info.dart';
import 'package:scores/formulaires/screens/PageFormulaire.dart';
import 'package:scores/shared/iconroundedbutton.dart';
import 'package:scores/shared/roundedbutton.dart';

class CongratsPAge extends StatefulWidget {
  final bool isdoctor;
  CongratsPAge({this.isdoctor});
  @override
  _CongratsPAgeState createState() => _CongratsPAgeState();
}

class _CongratsPAgeState extends State<CongratsPAge> {
  DateTime selectedDate = DateTime.now();

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
      body: Container(
        height: MediaQuery.of(context).size.height *0.75,
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.05,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
            bottom: MediaQuery.of(context).size.height * 0.02
        ),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            // margin: const EdgeInsets.only(left:10,top:10.0,right: 20,bottom:100.0),
            elevation: 3,
            shadowColor: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Bon travail ! \ntàche complète",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.blueGrey[900],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0, vertical: 20),
                    child: widget.isdoctor?IconRounded_Button(
                      title: 'RETOUR A L\'ACCEUIL',
                      image: 'assets/next.png',
                      onpressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PageFormulaire(isdoctor: true,)));
                      },
                    ):IconRounded_Button(
                      title: 'RETOUR A L\'ACCEUIL',
                      image: 'assets/next.png',
                      onpressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PageFormulaire(isdoctor: false,)));
                      },
                    ),
                  ),
                ],
              ),
            )
          //SizedBox
        ),
      ),
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light(), // This will change to light theme.
          child: child,
        );
      },
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
}
