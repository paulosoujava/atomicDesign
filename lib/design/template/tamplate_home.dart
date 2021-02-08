import 'package:atom/design/atom/images/atom_image.dart';
import 'package:atom/design/atom/texts/atom_text.dart';
import 'package:atom/design/organisms/list/list.dart';
import 'package:atom/design/organisms/list/others.dart';
import 'package:atom/design/utils/colors/colors_app.dart';
import 'package:atom/design/utils/sizes/sizes.dart';
import 'package:atom/design/utils/spaces/space.dart';
import 'package:flutter/material.dart';

class TemplateHome extends StatelessWidget {
  final MoleculeList imagesTop;
  final MoleculeOthersList imagesOthers;
  final String urlPromotionImage;
  final String titleTop;
  final String titleOthers;

  const TemplateHome({Key key, this.imagesTop, this.imagesOthers, this.urlPromotionImage, this.titleTop, this.titleOthers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: BLACK,
            child: AtomImage(
              urlPath: urlPromotionImage,
              height: double.infinity,
              width: double.infinity,
            ),
            height: mediaQuery(context).width * 0.6,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AtomText(label: titleTop, fontSize: 30),
            ),
          ),
          Container(
            height: 200,
            child: imagesTop,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AtomText(label: 'Others', fontSize: 30),
            ),
          ),
          imagesOthers,
        ],
      ),
    );
  }
}
