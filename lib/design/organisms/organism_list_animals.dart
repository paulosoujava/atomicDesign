import 'package:atom/atom/texts/atom_lorem_text.dart';
import 'package:atom/design/behaviors/buttons/app_outline_button.dart';
import 'package:atom/design/behaviors/images/app_image.dart';
import 'package:atom/design/molecules/cards/card_2x1_column.dart';
import 'package:atom/design/molecules/cards/card_2x2_column.dart';

import 'package:flutter/material.dart';

class OrganismListAnimals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          AppImage.circularImage(),
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
            columnThree: AppOutlineButton.buttonRegular(
              () {},
            ),
          ),
          Card2x2Column(
              columnOne: AppImage.circularImage(),
              columnTwo: AtomLoremText(label: "Meu lindo texto de exemplo deste card maravilhoso criado com o molecula"),
              columnThree: AppOutlineButton.buttonRegular(() {}),
              columnFour: AppOutlineButton.buttonRegular(() {})),
        ],
      ),
    );
  }
}
