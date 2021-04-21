import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:scores/formulaires/components/form_info.dart';
import 'package:scores/formulaires/components/user_info.dart';
import 'package:scores/profil/components/Modal2.dart';
import 'package:scores/shared/constants.dart';
import 'package:scores/shared/iconroundedbutton.dart';
import 'package:scores/shared/roundedbutton.dart';

import 'congrats_page.dart';
import 'form_details.dart';
import 'form_questions.dart';

class FormQuestions2 extends StatefulWidget {
  final bool isdoctor;
  FormQuestions2({this.isdoctor});
  @override
  _FormQuestions2State createState() => _FormQuestions2State();
}

class _FormQuestions2State extends State<FormQuestions2> {
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
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(
            //top: MediaQuery.of(context).size.height * 0.05,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
            bottom: MediaQuery.of(context).size.height * 0.02),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            // margin: const EdgeInsets.only(left:10,top:10.0,right: 20,bottom:100.0),
            elevation: 3,
            shadowColor: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "1.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blueGrey[900],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  RadioButtonGroup(
                      activeColor: Color(0xFFE84927),
                      labels: <String>[
                        "Option 1",
                        "Option 2",
                        "Option 3",
                      ],
                      onSelected: (String selected) => print(selected)),
                  Text(
                    "2.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blueGrey[900],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  CheckboxGroup(
                      activeColor: Color(0xFFE84927),
                      labels: <String>[
                        "option",
                        "option1",
                        "option2",
                        "option3",
                      ],
                      onSelected: (List<String> checked) =>
                          print(checked.toString())),
                  Text(
                    "2.lorem ipum dolor sit.lorem ipum dolor sit.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blueGrey[900],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  CheckboxGroup(
                      orientation: GroupedButtonsOrientation.VERTICAL,
                      activeColor: Color(0xFFE84927),
                      labels: <String>[
                        "oui",
                        "non",
                      ],
                      onSelected: (List<String> checked) =>
                          print(checked.toString())),
                  widget.isdoctor
                      ? Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FormQuestions1(
                                                isdoctor: widget.isdoctor,
                                              )));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      EvaIcons.arrowBack,
                                      size: 24,
                                      color: DeactiveIconColor,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Retour',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: DeactiveIconColor),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _showPatientsList();
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Envoyer',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: DeactiveIconColor),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.send_outlined,
                                      size: 24,
                                      color: DeactiveIconColor,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: IconRounded_Button(
                            title: 'Continue',
                            image: 'assets/next.png',
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CongratsPAge()));
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

  _showPatientsList() {
    return showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        content: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Modal2(
              nom: "isam",
            ),
            Modal2(
              nom: "isam",
            ),
            Modal2(
              nom: "isam",
            ),
            Modal2(
              nom: "isam",
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(ctx).pop();
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: new BoxDecoration(color: Color(0xFFE8DCFF)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "envoyer",
                    style: TextStyle(
                      fontFamily: 'GandhiSans',
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: ActiveIconColor,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.send_outlined,
                    size: 30,
                    color: ActiveIconColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
