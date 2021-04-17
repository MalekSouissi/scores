import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:scores/formulaires/components/info_container.dart';
import 'package:scores/shared/constants.dart';

class User_Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 30,
            child: Text('T'),
          ),
           Text('DR Hanen',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InfoContainer(
                icon: Icon(
                  EvaIcons.phone,
                  size: 20,
                  color: DeactiveIconColor,
                ),
                text: '25 258 456',
              ),
              InfoContainer(icon:Icon(
                EvaIcons.emailOutline,
                size: 20,
                color: DeactiveIconColor,
              ),
                text: 'malek@malek.com',
              ),
            ],
          )
        ],
      ),
    );
  }
}
