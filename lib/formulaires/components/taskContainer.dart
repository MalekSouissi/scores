import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:scores/formulaires/components/form_info.dart';
import 'package:scores/formulaires/screens/form_details.dart';
import 'package:scores/shared/constants.dart';

class TaskContainer extends StatelessWidget {
  final bool isfinished;
  TaskContainer({this.isfinished});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.18;
    double width = MediaQuery.of(context).size.width * 0.85;

    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black87.withOpacity(0.09),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ]),
          child: FormInfo(),
        ),
        Positioned(
          top: -height * 0.1,
          left: width * 0.65,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                    color: isfinished
                        ? DeactiveIconColor.withOpacity(0.4)
                        : ActiveIconColor.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  isfinished ? 'completé' : 'nouveau',
                  style: TextStyle(
                      color: isfinished ? Color(0xff5C20D9) : ActiveIconColor,
                      fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                height: height * 0.5,
              ),
              IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FormDetails()));
                },
                icon: Icon(
                  Icons.arrow_forward_outlined,
                  size: width * 0.12,
                ),
                color: isfinished ? Color(0xff5C20D9) : ActiveIconColor,
              )
            ],
          ),
        ),
      ],
    );
  }
}
