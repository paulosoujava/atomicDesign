import 'package:atom/design/atom/input/atom_input.dart';
import 'package:atom/design/atom/texts/atom_text.dart';
import 'package:atom/design/utils/sizes/sizes.dart';
import 'package:atom/design/utils/spaces/space.dart';
import 'package:flutter/material.dart';

class AppMoleculesInput {
  static Widget labelAndInputAndSpace(String label, String hint) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AtomText(
          label: label,
        ),
        AtomInput(hintString: hint),
        space(height: H_16),
      ],
    );
  }
}
