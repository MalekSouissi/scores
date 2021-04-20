import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Modal.dart';

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
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Téléphone: ",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF0A001F),
                  fontFamily: 'GandhiSans',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                widget.Tel,
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
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "SSM :",
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
            height: MediaQuery.of(context).size.height * 0.01,
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
            height: MediaQuery.of(context).size.height * 0.01,
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
              Row(
                children: [
                  Text(
                    widget.med,
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF0A001F),
                      fontFamily: 'GandhiSans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  IconButton(
                    icon: const Icon(Icons.remove_red_eye_outlined),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          content: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Modal(
                                nom: "isam",
                              ),
                              Modal(
                                nom: "isam",
                              ),
                              Modal(
                                nom: "isam",
                              ),
                              Modal(
                                nom: "isam",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                          actions: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.of(ctx).pop();
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                decoration:
                                    new BoxDecoration(color: Color(0xFFE8DCFF)),
                                child: Icon(
                                  Icons.close,
                                  size: 30,
                                  color: Colors.red,
                                ),
                              ),
                            )

                            // TextButton(
                            //
                            //          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFFE8DCFF))),
                            //          onPressed: () {
                            //            Navigator.of(ctx).pop();
                            //          },
                            //          child:  Center(
                            //            child: Icon(Icons.close, size: 30,
                            //              color: Colors.red,),
                            //
                            //        ),
                            //    ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
