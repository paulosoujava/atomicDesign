import 'package:flutter/material.dart';

class AtomIcon extends StatelessWidget {
  final double size;
  final Color color;
  final String semanticLabel;
  final IconData icon;

  const AtomIcon(
    this.icon, {
    this.size,
    this.color,
    this.semanticLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      semanticLabel: semanticLabel,
    );
  }
}
