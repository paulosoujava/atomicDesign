import 'package:atom/design/atom/texts/atom_text.dart';
import 'package:atom/design/behaviors/icons/behavior_icons.dart';
import 'package:atom/design/molecules/buttons/app_button.dart';
import 'package:atom/design/molecules/inputs/app_input.dart';
import 'package:atom/design/organisms/login/login.dart';
import 'package:atom/design/template/template_page.dart';
import 'package:atom/design/utils/colors/colors_app.dart';
import 'package:atom/design/utils/lines/line.dart';
import 'package:atom/design/utils/sizes/sizes.dart';
import 'package:atom/design/utils/spaces/space.dart';

import 'package:flutter/material.dart';

class Register {
  static Widget form(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppOutlineButton.backButton(() {
          Navigator.pop(context);
        }),
        Padding(
          padding: const EdgeInsets.only(left: 40.0, right: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              space(height: H_16),
              AtomText(label: 'Register', fontSize: 30),
              space(height: H_16),
              line(color: AMBER_ACCENT),
              space(height: H_16),
              AppMoleculesInput.labelAndInputAndSpace('Nome', 'digite seu nome...'),
              AppMoleculesInput.labelAndInputAndSpace('Email', 'digite seu email...'),
              AppMoleculesInput.labelAndInputAndSpace('Senha', 'digite sua senha...'),
              AppOutlineButton.buttonRegular(() {}, AtomText(label: "Email"), width: 880),
              space(height: H_60),
              Center(child: AtomText(label: 'voltar')),
              space(height: H_16),
            ],
          ),
        ),
      ],
    );
  }
}
