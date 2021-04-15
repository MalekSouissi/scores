import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String inputHint;
  final bool obscure;

  InputField({this.inputHint ,this.obscure});
  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.065,
            width: MediaQuery.of(context).size.width*0.7,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5 , color: Color(0xFFE7E6E9)),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  obscureText: widget.obscure,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: widget.inputHint,
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFABA8B3),
                      fontFamily: 'Arial',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
