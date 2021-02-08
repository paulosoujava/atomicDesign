import 'package:atom/design/behaviors/images/app_image.dart';
import 'package:atom/design/utils/sizes/sizes.dart';
import 'package:flutter/material.dart';

class TemplatePage extends StatelessWidget {
  final List<Widget> widgets;

  const TemplatePage({Key key, this.widgets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = mediaQuery(context);
    return Stack(
      children: [
        AppImage.rectangularImage(width: double.infinity, height: double.infinity),
        Padding(
          padding: const EdgeInsets.only(right: 2.0, top: 2.0, left: 2.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: size.width,
              height: size.height * 0.56,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widgets,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
