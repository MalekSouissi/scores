import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  final Widget header;
  Header({this.header});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: header,
    );
  }
}
