import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/shared/constants.dart';

class Info extends StatefulWidget {
  final String info ;
  Info({@required this.info});
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.info,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[900],
              fontWeight: FontWeight.w700,
            ), ),
          Icon(Icons.edit, size: 30,
            color: DeactiveIconColor,)
        ],
      ),
    );
  }
}
