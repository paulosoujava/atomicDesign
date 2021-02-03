import 'package:flutter/material.dart';

class Card2x2Column extends StatelessWidget {
  final Widget columnOne, columnThree;
  final Widget columnTwo, columnFour;
  final double widthCol1, widthCol2;

  const Card2x2Column({Key key, this.columnOne, this.columnTwo, this.widthCol1, this.widthCol2, this.columnThree, this.columnFour}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child: columnOne, width: widthCol1 ?? 80),
                ),
                Container(child: columnTwo, width: widthCol2 ?? 300),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: columnThree,
                  ),
                  Container(child: columnFour),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
