import 'package:flutter/material.dart';
import 'package:scores/widget/inputfield.dart';
import 'package:scores/widget/roundedbutton.dart';

class MdpOublie extends StatefulWidget {
  @override
  _MdpOublieState createState() => _MdpOublieState();
}

class _MdpOublieState extends State<MdpOublie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 150),
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
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0, 10),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Center(
                        child: Text(
                          'insérer votre mail',
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
                      height: 35,
                    ),
                    InputField(
                      inputHint: 'jhondoe@email.com',
                      obscure: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'voir mail pour récuperer mot de passe',
                        style: TextStyle(
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0A001F)),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Rounded_Button(
                title: 'CONTINUE',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
