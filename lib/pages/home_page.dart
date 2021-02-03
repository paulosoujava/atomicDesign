import 'package:atom/behaviors/buttons/behavior_outline_button.dart';
import 'package:atom/behaviors/images/app_image.dart';
import 'package:atom/atom/texts/atom_lorem_text.dart';
import 'package:atom/behaviors/buttons/app_outline_button.dart';
import 'package:atom/core/behaviors.dart';
import 'package:atom/molecules/cards/card_2x1_column.dart';
import 'package:atom/molecules/cards/card_2x2_column.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 50),
                Card2x1Column(
                  columnOne: AppImage.circularImage(),
                  columnTwo: AtomLoremText(label: "Meu lindo texto de exemplo deste card maravilhoso criado com o molecula"),
                ),
                Card2x1Column(
                  widthCol1: 300,
                  widthCol2: 80,
                  columnOne: AtomLoremText(label: "Meu lindo texto de exemplo deste card maravilhoso criado com o molecula"),
                  columnTwo: AppImage.rectangularImage(),
                ),
                Card2x2Column(
                  columnOne: AppImage.circularImage(),
                  columnTwo: AtomLoremText(label: "Meu lindo texto de exemplo deste card maravilhoso criado com o molecula"),
                  columnThree: AppOutlineButton.buttonRegular(() {}),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
