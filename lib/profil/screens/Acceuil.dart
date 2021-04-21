import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/formulaires/screens/Formulaire_doc.dart';
import 'package:scores/formulaires/screens/Formulaire_patient.dart';
import 'package:scores/profil/components/Item_list_patient.dart';
import 'package:scores/profil/screens/Patient_inf.dart';

class Acceuil extends StatefulWidget {
  bool noForms = true;
  bool isdoctor ;
  Acceuil({this.noForms,this.isdoctor});
  @override
  _AcceuilState createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0,),
      child: Stack(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Salut ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[900],
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  widget.isdoctor?Text(
                    "Doctor ! ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'GandhiSans',
                      color: Color(0xFF0A001F),
                    ),
                  ):Text(
                    "Patient ! ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'GandhiSans',
                      color: Color(0xFF0A001F),
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: widget.noForms
                ? Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(text: 'pas de \n',    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.grey[400]),
                          ),
                          TextSpan(text: 'nouveaux\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.grey[400])),
                          TextSpan(text: 'formulaires',    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.grey[400]),
                          ),
                        ],
                      ),
                    )):_buildList(widget.isdoctor)
                ,
          )
        ],
      ),
    );
  }
  _buildListDocotors(){
    return  GridView.count(
      padding: const EdgeInsets.all(35),
      crossAxisSpacing: MediaQuery.of(context).size.width * 0.04,
      mainAxisSpacing: MediaQuery.of(context).size.height * 0.04,
      crossAxisCount: 2,
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DocFormulaire()));
          },
          child: Item(
              image:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSngnz-3bm3P7nksGQRE2P6sYYHgA15X0oMGA&usqp=CAU",
              nom: "Dr Hanen",
              nb_forms: "2 formulaires a remplir",
              text: "aa"),
        ),
        Item(
            image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSngnz-3bm3P7nksGQRE2P6sYYHgA15X0oMGA&usqp=CAU",
            nom: "Dr Hanen",
            nb_forms: "2 formulaires a remplir",
            text: "aa"),
        Item(
            image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSngnz-3bm3P7nksGQRE2P6sYYHgA15X0oMGA&usqp=CAU",
            nom: "Dr Hanen",
            nb_forms: "2 formulaires a remplir",
            text: "aa"),
        Item(
            image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSngnz-3bm3P7nksGQRE2P6sYYHgA15X0oMGA&usqp=CAU",
            nom: "Dr Hanen",
            nb_forms: "2 formulaires a remplir",
            text: "aa"),
        Item(
            image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSngnz-3bm3P7nksGQRE2P6sYYHgA15X0oMGA&usqp=CAU",
            nom: "Dr Hanen",
            nb_forms: "2 formulaires a remplir",
            text: "aa"),
        Item(
            image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSngnz-3bm3P7nksGQRE2P6sYYHgA15X0oMGA&usqp=CAU",
            nom: "Dr Hanen",
            nb_forms: "2 formulaires a remplir",
            text: "aa")
      ],
    );
  }

  _buildListPatients(){
    return  GridView.count(
      padding: const EdgeInsets.all(35),
      crossAxisSpacing: MediaQuery.of(context).size.width * 0.04,
      mainAxisSpacing: MediaQuery.of(context).size.height * 0.04,
      crossAxisCount: 2,
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PatientFormulaire()));
          },
          child: Item(
              image:
              "https://pinotmasters.sk/wp-content/uploads/2014/10/speaker-3.jpg",
              nom: "Salim",
              nb_forms: "2 formulaires a remplir",
              text: "aa"),
        ),
        Item(
            image:
            "https://pinotmasters.sk/wp-content/uploads/2014/10/speaker-3.jpg",
            nom: "Salim",
            nb_forms: "2 formulaires a remplir",
            text: "aa"),
        Item(
            image:
            "https://pinotmasters.sk/wp-content/uploads/2014/10/speaker-3.jpg",
            nom: "Salim",
            nb_forms: "2 formulaires a remplir",
            text: "aa"),
        Item(
            image:
            "https://pinotmasters.sk/wp-content/uploads/2014/10/speaker-3.jpg",
            nom: "Salim",
            nb_forms: "2 formulaires a remplir",
            text: "aa"),
        Item(
            image:
            "https://pinotmasters.sk/wp-content/uploads/2014/10/speaker-3.jpg",
            nom: "Salim",
            nb_forms: "2 formulaires a remplir",
            text: "aa"),
        Item(
            image:
            "https://pinotmasters.sk/wp-content/uploads/2014/10/speaker-3.jpg",
            nom: "Salim",
            nb_forms: "2 formulaires a remplir",
            text: "aa")
      ],
    );
  }

  _buildList(bool isdoctor){
    return isdoctor?_buildListPatients():_buildListDocotors();
  }
}
