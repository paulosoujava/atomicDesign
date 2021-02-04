import 'package:flutter/material.dart';

class AtomText extends StatelessWidget {
  final String label;
  final int maxLines;
  final double fontSize;

  const AtomText({
    Key key,
    this.label,
    this.maxLines,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      maxLines: maxLines ?? 5,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: fontSize),
    );
  }
}
