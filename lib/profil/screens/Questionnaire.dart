import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/profil/components/SimpleText.dart';
import 'package:scores/shared/roundedbutton.dart';

class Questionnaire extends StatefulWidget {
  @override
  _QuestionnaireState createState() => _QuestionnaireState();
}

class _QuestionnaireState extends State<Questionnaire> {
  DateTime selectedDate = DateTime.now();
  TextEditingController _dateController = TextEditingController();
  Task task = new Task();
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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 38.0, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SimpleText(
                  text:
                      "lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit",
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:28.0, horizontal: 8),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Column(

                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Nom ',
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Prénom ',
                          ),
                        ),
                        TextFormField(
                          onSaved: (val) {
                            task.date = selectedDate;
                          },
                          controller: _dateController,
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            labelText: "Date",
                            icon: Icon(Icons.calendar_today),
                          ),
                          validator: (value) {
                            if (value.isEmpty)
                              return "Please enter a date for your task";
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                SimpleText(
                  text:
                  "lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit.lorem ipum dolor sit",
                ),
                SizedBox(height: 50,),
                Align(
                 alignment: Alignment.bottomCenter,
                    child: Rounded_Button(
                      title: "Retour a l'acceuil ",
                    )),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
class Task {
  String name;
  DateTime date;

  Task({this.name, this.date});
}