import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/profil/components/Item_list_patient.dart';

class Acceuil extends StatefulWidget {
  @override
  _AcceuilState createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:25.0),
      child: Stack(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Salut ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[900],
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text("Patient ! ",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.grey[900],
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              )
          ),

          Padding(
            padding: const EdgeInsets.only(top :50.0),
            child: GridView.count(
              padding: const EdgeInsets.all(35),
              crossAxisSpacing: MediaQuery.of(context).size.width*0.04,
              mainAxisSpacing: MediaQuery.of(context).size.height*0.04,
              crossAxisCount: 2,
              children: [
                Item(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSngnz-3bm3P7nksGQRE2P6sYYHgA15X0oMGA&usqp=CAU", nom: "Dr Hanen", nb_forms: "2 formulaires a remplir", text: "aa"),
                Item(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSngnz-3bm3P7nksGQRE2P6sYYHgA15X0oMGA&usqp=CAU", nom: "Dr Hanen", nb_forms: "2 formulaires a remplir", text: "aa"),
                Item(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSngnz-3bm3P7nksGQRE2P6sYYHgA15X0oMGA&usqp=CAU", nom: "Dr Hanen", nb_forms: "2 formulaires a remplir", text: "aa"),
                Item(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSngnz-3bm3P7nksGQRE2P6sYYHgA15X0oMGA&usqp=CAU", nom: "Dr Hanen", nb_forms: "2 formulaires a remplir", text: "aa"),
                Item(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSngnz-3bm3P7nksGQRE2P6sYYHgA15X0oMGA&usqp=CAU", nom: "Dr Hanen", nb_forms: "2 formulaires a remplir", text: "aa"),
                Item(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSngnz-3bm3P7nksGQRE2P6sYYHgA15X0oMGA&usqp=CAU", nom: "Dr Hanen", nb_forms: "2 formulaires a remplir", text: "aa")
              ],
            ),
          )
        ],
      ),
    );
  }
}
