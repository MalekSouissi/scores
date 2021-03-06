import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:scores/formulaires/screens/congrats_page.dart';
import 'package:scores/shared/iconroundedbutton.dart';

class Recap extends StatefulWidget {
  @override
  _RecapState createState() => _RecapState();
}

class _RecapState extends State<Recap> {
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
        height: MediaQuery.of(context).size.height*0.9,
        margin: EdgeInsets.only(
          //top: MediaQuery.of(context).size.height * 0.05,
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
          padding: const EdgeInsets.symmetric(vertical:30.0, horizontal: 30),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Recap",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blueGrey[900],
                  fontWeight: FontWeight.w700,
                ),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                child: Text("BILAN DE REDUCATION PELVI-PERINALE",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.blueGrey[900],
                    fontWeight: FontWeight.w400,
                  ),),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Text("12/5/2020",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blueGrey[900],
                  fontWeight: FontWeight.w400,
                ),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
              Text("Scorre IPSS",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.blueGrey[900],
                  fontWeight: FontWeight.w900,
                ),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
              Container(
                width: MediaQuery.of(context).size.width*0.25,
                height: MediaQuery.of(context).size.height*0.05,
              child: TextField(

                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Color(0xFF707070), width: 1),
                  ),



                ),
              ),
            ),
              SizedBox(height: 5,),
              Text("(0-7 l??ger , 8-19 mod??rer , 20-35 s??v??re)",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.blueGrey[900],
                  fontWeight: FontWeight.w300,
                ),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

              Text("Qualit?? de vie",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.blueGrey[900],
                  fontWeight: FontWeight.w900,
                ),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
              Container(
                width: MediaQuery.of(context).size.width*0.25,
                height: MediaQuery.of(context).size.height*0.05,
                child: TextField(

                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Color(0xFF707070), width: 1),
                    ),



                  ),
                ),
              ),
              SizedBox(height: 5,),
              Text("(0 ?? 6)",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.blueGrey[900],
                  fontWeight: FontWeight.w300,
                ),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

              Text("Score IIEFS",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.blueGrey[900],
                  fontWeight: FontWeight.w900,
                ),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
              Container(
                width: MediaQuery.of(context).size.width*0.25,
                height: MediaQuery.of(context).size.height*0.05,
                child: TextField(

                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Color(0xFF707070), width: 1),
                    ),



                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
              Text("(1-4 non interpr??table , 5-10 troubles de l'??rection s??v??re , 11-15mod??r??, 16-20l??ger, 21-25 fonction ??rectile normale)",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blueGrey[900],
                  fontWeight: FontWeight.w300,
                ),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
            IconRounded_Button(
              title: 'Continue',
              image: 'assets/next.png',
              onpressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CongratsPAge(isdoctor: true,)));
              },)
           ],
          ),
        ),
          //SizedBox
        ),
      ),
    );
  }
}
