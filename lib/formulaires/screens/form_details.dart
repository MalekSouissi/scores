
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/formulaires/components/form_info.dart';
import 'package:scores/formulaires/components/user_info.dart';
import 'package:scores/formulaires/screens/form_questions.dart';
import 'package:scores/formulaires/screens/form_response.dart';
import 'package:scores/shared/appbar.dart';
import 'package:scores/shared/constants.dart';
import 'package:scores/shared/roundedbutton.dart';

class FormDetails extends StatelessWidget {
  final bool isfinished;
  FormDetails({this.isfinished});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*0.08),
          child: CustomAppBar(changeIcon: true,)),
      body: Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.05,
            left: MediaQuery.of(context).size.width * 0.05,
        right: MediaQuery.of(context).size.width*0.05,),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  child: Text('M'),
                ),
                isfinished?Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Salim',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ):Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Dr Hanen',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
      SizedBox(height: 10,),
      Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
         // margin: const EdgeInsets.only(left:10,top:10.0,right: 20,bottom:100.0),
          elevation: 3,
          shadowColor: Colors.grey,
          child: Column(
            children: [
              Container(
                width: 20,
                child: Divider(
                  color: Colors.grey[300],
                  thickness: 3,

                ),
              ),

              Container(
                  height : MediaQuery.of(context).size.height * 0.18,
                   width : MediaQuery.of(context).size.width * 0.85,
                  child: FormInfo()),
              Container(
                width : MediaQuery.of(context).size.width * 0.85,
                margin: EdgeInsets.only(left: 20,bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("details",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueGrey[900],
                        fontWeight: FontWeight.bold,
                      ),),
                    Text("8 questions",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueGrey[900],
                        fontWeight: FontWeight.w400,
                      ),),
                    Text("français",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueGrey[900],
                        fontWeight: FontWeight.w400,
                      ),),
                    Text("8 questions",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueGrey[900],
                        fontWeight: FontWeight.w400,
                      ),),
                    Text("français",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueGrey[900],
                        fontWeight: FontWeight.w400,
                      ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: isfinished?Rounded_Button(title: 'Voir réponses',onpressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FormResponses()));
                },):Rounded_Button(title: 'Début',onpressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FormQuestions1()));
                },),
              )

            ],
          )
        //SizedBox
      ),
          ],
        ),
      ),
    );
  }
}
