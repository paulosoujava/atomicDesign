import 'package:flutter/material.dart';

class MolecularIconButton extends StatelessWidget {
  final Function onPressed;

  const MolecularIconButton({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(icon: new Icon(Icons.arrow_back), onPressed: onPressed);
  }
}
