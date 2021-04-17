import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:international_phone_input/international_phone_input.dart';
import 'package:scores/authentification/sauthentifier.dart';
import 'package:scores/widget/choosegender.dart';
import 'file:///C:/Users/ASUSI7/AndroidStudioProjects/scores/lib/lists/date.dart';
import 'package:scores/widget/iconroundedbutton.dart';
import 'package:scores/widget/inputfield.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class SignUp2 extends StatefulWidget {
  final String Choice = 'métier';

  @override
  _SignUp2State createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  String phoneNumber;
  String phoneIsoCode;

  void onPhoneNumberChange(
      String number, String internationalizedPhoneNumber, String isoCode) {
    print(number);
    setState(() {
      phoneNumber = number;
      phoneIsoCode = isoCode;
    });
  }

  _showSingleChoiceDialog(BuildContext context, String choice) => showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)), //this right here
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RadioButtonGroup(
                  labels: Jobs,
                  labelStyle: TextStyle(
                      fontFamily: 'GandhiSans',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  onChange: (String label, int index) =>
                      print("label: $label index: $index"),
                  onSelected: (String label) {
                    choice = label;
                    print(choice);
                    return choice;
                  },
                  activeColor: Color(0xFFE84927),
                ),
                Container(
                  color: Color(0xFFE8DCFF),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: MediaQuery.of(context).size.width,
                  child: IconButton(
                      icon: Icon(
                        Icons.check,
                        color: Color(0xFFE84927),
                        size: 40,
                      ),
                      onPressed: () {}),
                )
              ],
            ),
          ),
        );
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: MediaQuery.of(context).size.height * 0.465,
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
                        children: <TextSpan>[
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
                        ],
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
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: MediaQuery.of(context).size.height * 0.065,
                        width: MediaQuery.of(context).size.width * 0.65,
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 1.5, color: Color(0xFFE7E6E9)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: InternationalPhoneInput(
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 0.0),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 0.0),
                            ),
                            hintText: 'Téléphone',
                            hintStyle: TextStyle(
                              fontFamily: 'GandhiSans',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFABA8B3),
                            ),
                          ),
                          onPhoneNumberChange: onPhoneNumberChange,
                          initialPhoneNumber: phoneNumber,
                          initialSelection: 'tn',
                          showCountryCodes: true,
                        ),
                      ),
                    ),
                    InputField(
                      inputHint: 'adresse',
                      obscure: false,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: ChooseGender(),
                    ),
                    InputField(
                      inputHint: 'Numéro de sécurité',
                      obscure: false,
                    ),
                    Column(
                      children: [
                        Center(
                          child: Text(
                            'En créant un compte, vous acceptez notre',
                            style: TextStyle(
                                fontFamily: 'GandhiSans', fontSize: 13.5),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Conditions d\'utilisation et politique de confidentialité',
                            style: TextStyle(
                                fontFamily: 'GandhiSans', fontSize: 13.5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.085,
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
                height: MediaQuery.of(context).size.height * 0.135,
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
