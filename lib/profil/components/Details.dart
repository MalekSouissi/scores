import 'package:flutter/cupertino.dart';

class Details extends StatefulWidget {
  final String Tel;
  final String ssm;
  final String adresse;
  final String med;
  Details({@required this.Tel, this.ssm, this.adresse, this.med});
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "details:",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF0A001F),
                  fontFamily: 'GandhiSans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(
            height:  MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Téléphone: " ,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF0A001F),
                  fontFamily: 'GandhiSans',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                widget.Tel ,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF0A001F),
                  fontFamily: 'GandhiSans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(
            height:  MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "SSM :" ,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF0A001F),
                  fontFamily: 'GandhiSans',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                widget.ssm,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF0A001F),
                  fontFamily: 'GandhiSans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(
            height:  MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Adresse:",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF0A001F),
                  fontFamily: 'GandhiSans',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                widget.adresse,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF0A001F),
                  fontFamily: 'GandhiSans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(
            height:  MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Médecins:",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF0A001F),
                  fontFamily: 'GandhiSans',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                widget.med,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF0A001F),
                  fontFamily: 'GandhiSans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
