import 'package:atom/design/utils/colors/colors_app.dart';
import 'package:flutter/material.dart';

class AtomInput extends StatelessWidget {
  final String hintString;
  const AtomInput({Key key, this.hintString}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: new InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AMBER, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: BLACK, width: 1.0),
        ),
        hintText: hintString,
      ),
    );
  }
}
