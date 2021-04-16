import 'package:flutter/material.dart';

class Choose_Avatar extends StatefulWidget {

  final String image;
  final String title;
  final Function ontap;

  const Choose_Avatar({Key key, this.image, this.title, this.ontap}) : super(key: key);

  @override
  _Choose_AvatarState createState() => _Choose_AvatarState();
}

class _Choose_AvatarState extends State<Choose_Avatar> {

  bool clicked = false;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        height: MediaQuery.of(context).size.height*0.195,
        width:  MediaQuery.of(context).size.width*0.375,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0, 10),
                blurRadius: 30,
              )
            ]
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                widget.image,
              ),
              Text(
                widget.title,
                style: TextStyle(
                    fontFamily: 'GandhiSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
