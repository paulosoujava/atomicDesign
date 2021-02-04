import 'package:atom/design/atom/texts/atom_text.dart';
import 'package:atom/design/core/behaviors.dart';
import 'package:atom/design/molecules/buttons/icon_button.dart';

import 'behavior_outline_button.dart';

class AppOutlineButton {
  final double width;
  final AtomText atomText;

  AppOutlineButton(this.width, this.atomText);

  static buttonLoading() {
    return BehaviorOutlineButton(
      behavior: Behaviour.loading,
    );
  }

  static buttonRegular(Function onPressed, AtomText atomText, {double width}) {
    return BehaviorOutlineButton(
      behavior: Behaviour.regular,
      onPressed: onPressed,
      width: width,
      label: atomText,
    );
  }

  static buttonDisabled() {
    return BehaviorOutlineButton(
      behavior: Behaviour.disabled,
    );
  }

  static buttonError() {
    return BehaviorOutlineButton(
      behavior: Behaviour.error,
    );
  }

  static backButton(Function onPressed) {
    return MolecularIconButton(onPressed: onPressed);
  }
}
