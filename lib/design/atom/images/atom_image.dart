import 'package:flutter/material.dart';

class AtomImage extends StatelessWidget {
  final double width, height;
  final String urlPath;

  const AtomImage({Key key, this.width, this.height, this.urlPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      urlPath,
      width: width ?? 80.0,
      height: height ?? 80.0,
      fit: BoxFit.cover,
    );
  }
}
