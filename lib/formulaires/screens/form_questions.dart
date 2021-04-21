import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:scores/formulaires/components/form_info.dart';
import 'package:scores/formulaires/components/user_info.dart';
import 'package:scores/formulaires/screens/form_details.dart';
import 'package:scores/formulaires/screens/form_questions2.dart';
import 'package:scores/shared/constants.dart';
import 'package:scores/shared/iconroundedbutton.dart';
import 'package:scores/shared/roundedbutton.dart';

class FormQuestions1 extends StatefulWidget {
  final bool isdoctor;
  FormQuestions1({this.isdoctor});
  @override
  _FormQuestions1State createState() => _FormQuestions1State();
}

class _FormQuestions1State extends State<FormQuestions1> {
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
        height: MediaQuery.of(context).size.height * 0.85,
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.05,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
            bottom: MediaQuery.of(context).size.height * 0.05),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            // margin: const EdgeInsets.only(left:10,top:10.0,right: 20,bottom:100.0),
            elevation: 3,
            shadowColor: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blueGrey[900],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Column(
                    children: [
                      TextFormField(
                        //obscureText: widget.obscure,
                        decoration: InputDecoration(
                          hintText: 'Nom',
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFABA8B3),
                            fontFamily: 'Arial',
                          ),
                        ),
                      ),
                      TextFormField(
                        //obscureText: widget.obscure,
                        decoration: InputDecoration(
                          hintText: 'Prenom',
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFABA8B3),
                            fontFamily: 'Arial',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () => _selectDate(context),
                              child: Text('Date: ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFFABA8B3),
                                    fontFamily: 'Arial',
                                  )),
                            ),
                            Container(
                              width: 100,
                              child: Column(
                                children: [
                                  Text(
                                    "${selectedDate.toLocal()}".split(' ')[0],
                                    style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.bold,),
                                  ),
                                  Divider(thickness: 2,),
                                ],
                              ),
                              //obscureText: widget.obscure,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blueGrey[900],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  widget.isdoctor?Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FormDetails(isfinished: false,isdoctor: widget.isdoctor,)));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(EvaIcons.arrowBack,size: 24,color: DeactiveIconColor,),
                            SizedBox(width: 10,),
                            Text('Retour',style: TextStyle(fontSize: 18,color: DeactiveIconColor),),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FormQuestions2(isdoctor: widget.isdoctor,)));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Suivant',style: TextStyle(fontSize: 18,color: DeactiveIconColor),),
                            SizedBox(width: 10,),
                            Icon(EvaIcons.arrowForward,size: 24,color: DeactiveIconColor,),
                          ],
                        ),
                      ),
                    ],
                  ):Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: IconRounded_Button(
                      title: 'Continue',
                      image: 'assets/next.png',
                      onpressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FormQuestions2(isdoctor: widget.isdoctor,)));
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
