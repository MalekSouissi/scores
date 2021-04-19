import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:scores/shared/constants.dart';

class InfoContainer extends StatelessWidget {
  final Icon icon;
  final String text;
  InfoContainer({this.icon,this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height *0.035,
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        border: Border.all(color: DeactiveIconColor,)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            icon,
            Text(text,style: TextStyle(fontSize: 14,),),
          ],
        ),
      ),
    );
  }
}
