import 'package:atom/design/atom/images/atom_image.dart';
import 'package:atom/design/atom/texts/atom_text.dart';
import 'package:atom/design/behaviors/images/app_image.dart';
import 'package:flutter/material.dart';

class CardVisit extends StatelessWidget {
  final AtomText atomText;

  const CardVisit({Key key, this.atomText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black,
      color: Colors.greenAccent[100],
      child: SizedBox(
        width: 300,
        height: 220,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              AppImage.circularImage(height: 500, width: 500), //CirclAvatar
              SizedBox(
                height: 10,
              ), //SizedBox
              atomText
              //SizedBox
              //SizedBox
            ],
          ), //Column
        ), //Padding
      ), //SizedBox
    );
    //Center
  }
}
