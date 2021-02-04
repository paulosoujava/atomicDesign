import 'package:atom/design/atom/input/atom_input.dart';
import 'package:atom/design/atom/texts/atom_text.dart';
import 'package:atom/design/molecules/buttons/app_button.dart';
import 'package:atom/design/molecules/inputs/app_input.dart';
import 'package:atom/design/organisms/register/register.dart';
import 'package:atom/design/template/template_page.dart';
import 'package:atom/design/utils/lines/line.dart';
import 'package:atom/design/utils/sizes/sizes.dart';
import 'package:atom/design/utils/spaces/space.dart';

import 'package:flutter/material.dart';

class Login {
  static Widget form(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30.0, right: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AtomText(label: 'Login', fontSize: 30),
          space(height: H_16),
          line(),
          space(height: H_60),
          AppMoleculesInput.labelAndInputAndSpace('Email', 'digite seu email...'),
          AppMoleculesInput.labelAndInputAndSpace('Senha', 'digite sua senha...'),
          AppOutlineButton.buttonRegular(() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Register.form(context)),
            );
          }, AtomText(label: "Login"), width: 880),
          space(height: H_60),
          Center(child: AtomText(label: 'esqueceu a senha?')),
          space(height: H_16),
          Center(child: AtomText(label: 'não tem conta')),
          space(height: H_16),
        ],
      ),
    );
  }
}
