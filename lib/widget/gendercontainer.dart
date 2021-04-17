import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenderContainer extends StatefulWidget {

  final Function ontap;
  final String image;
  final Color color;

  const GenderContainer({Key key, this.ontap, this.image, this.color}) : super(key: key);

  @override
  _GenderContainerState createState() => _GenderContainerState();
}

class _GenderContainerState extends State<GenderContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        height: MediaQuery.of(context).size.height*0.05,
        width: MediaQuery.of(context).size.width*0.15,
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(width: 1, color: widget.color),
        ),
        child: SvgPicture.asset(
          widget.image,
          color: widget.color,
        ),
      ),
    );
  }
}
