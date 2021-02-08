import 'package:atom/design/behaviors/icons/behavior_icons.dart';
import 'package:flutter/material.dart';

class MolecularIconButton extends StatelessWidget {
  final Function onPressed;

  const MolecularIconButton({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(icon: BehaviorIcons.back(), onPressed: onPressed);
  }
}
