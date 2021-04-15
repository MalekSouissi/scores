import 'package:flutter/material.dart';

class FormInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15,top: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Module: ',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('BILAN DE REEDUCATION '),
                ],
              ),
              Text('PELVI-PERINEALE'),

            ],
          ),
          Text('21/05/2021'),
        ],
      ),
    );
  }
}
