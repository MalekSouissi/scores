import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final String text;
  final String nb_forms;
  final String nom;
  final String image;
  Item(
      {@required this.image,
        @required this.nom,
        @required this.nb_forms,
        @required this.text});

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          child: Card(
            margin: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
                height: MediaQuery.of(context).size.height*0.25,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(widget.nom,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'GandhiSans',
                          color: Color(0xFF0A001F),
                        ),
                      ),
                      Container(
                        width: 20,
                        child: Divider(
                          color: Colors.grey[300],
                          thickness: 3,

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(widget.nb_forms,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[900],
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ),
        Positioned(
          top: .0,
          left: .0,
          right: .0,
          child: Center(
            child:    CircleAvatar(

              radius: 30,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    widget.image), //NetworkImage
                radius: 100,
              ),
            ),
          ),
        )
      ],
    );
  }
}
