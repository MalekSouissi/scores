import 'package:flutter/material.dart';
import 'package:scores/widget/gendercontainer.dart';

class ChooseGender extends StatefulWidget {
  @override
  _ChooseGenderState createState() => _ChooseGenderState();
}

class _ChooseGenderState extends State<ChooseGender> {

  Color colorf = Color(0xFF707070);
  Color colorm = Color(0xFF707070);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            'Genre',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'GandhiSans',
              fontSize: 20,
            ),
          ),
          SizedBox(width: 35),
          GenderContainer(
            image: 'assets/female.svg',
            color: colorf,
            ontap: () {
              setState(() {
                colorf = Color(0xFFE84927);
                colorm = Color(0xFF707070);
              });
            },
          ),
          SizedBox(width: 20,),
          GenderContainer(
            image: 'assets/male.svg',
            color: colorm,
            ontap: () {
              setState(() {
                colorm = Color(0xFFE84927);
                colorf = Color(0xFF707070);
              });
            },
          ),
        ],
      ),
    );
  }
}
