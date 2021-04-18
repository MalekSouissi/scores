import 'package:flutter/material.dart';


class Recherche extends StatelessWidget {
  const Recherche({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Color(0xFF707070), width: 1),
        ),
        hintText: "chercher formulaires",
        hintStyle: TextStyle(
          color: Color(0xFFE7E6E9),
          fontSize: 20,
        ),
        suffixIcon: Icon(
          Icons.search,
          color: Color(0xFF707070),
          size: 30,
        ),
      ),
    );
  }
}
