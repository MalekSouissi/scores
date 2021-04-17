import 'package:flutter/material.dart';

import 'constants.dart';


class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      //toolbarHeight: 120,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Icon(Icons.person_add_alt_1, size: 30,
          color: DeactiveIconColor,),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black87,
          ),
        )
      ],
      backgroundColor: Colors.transparent,
      // Colors.white.withOpacity(0.1),
      elevation: 0,
    );
  }
}
