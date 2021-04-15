import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item_list extends StatefulWidget {
  final String text;
  final String image;
  Item_list(
      {@required this.image,
        @required this.text});

  @override
  _Item_listState createState() => _Item_listState();
}

class _Item_listState extends State<Item_list> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.grey,


      child: SizedBox(

        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(

                radius: 35,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                     widget.image), //NetworkImage
                  radius: 100,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width*0.03,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[900],
                  fontWeight: FontWeight.w700,
                ), //Textstyle
              ), //Text
               //SizedBox
             //SizedBox
            ],
          ), //Column
        ), //Padding
      ), //SizedBox
    );;
  }
}
