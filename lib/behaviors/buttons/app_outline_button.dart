import 'package:atom/core/behaviors.dart';

import 'behavior_outline_button.dart';

class AppOutlineButton {
  static buttonLoading() {
    return BehaviorOutlineButton(
      behavior: Behaviour.loading,
    );
  }

  static buttonRegular(Function onPressed) {
    return BehaviorOutlineButton(
      behavior: Behaviour.regular,
      onPressed: onPressed,
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
}
