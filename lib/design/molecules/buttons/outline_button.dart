import 'package:atom/design/atom/texts/atom_text.dart';
import 'package:flutter/material.dart';

class MoleculeOutlineButton extends StatelessWidget {
  final Function onPressed;
  final AtomText atomText;
  final Color color, disabledBorderColor, highlightColor, hoverColor, textColor, disabledTextColor;
  final double highlightElevation;
  final bool autofocus;

  const MoleculeOutlineButton({
    Key key,
    this.onPressed,
    this.color,
    this.disabledBorderColor,
    this.highlightColor,
    this.hoverColor,
    this.textColor,
    this.disabledTextColor,
    this.highlightElevation,
    this.atomText,
    this.autofocus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      autofocus: autofocus,
      disabledBorderColor: disabledBorderColor,
      highlightColor: highlightColor,
      highlightElevation: highlightElevation,
      hoverColor: hoverColor,
      textColor: textColor,
      disabledTextColor: disabledTextColor,
      onPressed: onPressed,
      child: atomText,
      color: color,
    );
  }
}
