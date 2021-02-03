import 'package:flutter/material.dart';

class AtomOutlineButton extends StatelessWidget {
  final Function onPressed;
  final Widget child;
  final Color color, disabledBorderColor, highlightColor, hoverColor, textColor, disabledTextColor;
  final double highlightElevation;
  final bool autofocus;

  const AtomOutlineButton({
    Key key,
    this.onPressed,
    this.color,
    this.disabledBorderColor,
    this.highlightColor,
    this.hoverColor,
    this.textColor,
    this.disabledTextColor,
    this.highlightElevation,
    this.child,
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
      child: child,
      color: color,
    );
  }
}
