import 'package:atom/design/behaviors/images/behavior_image.dart';
import 'package:atom/design/core/behaviors.dart';

class AppImage {
  static rectangularImage() {
    return BehaviorImage(behaviour: Behaviour.rectagular);
  }

  static circularImage() {
    return BehaviorImage(behaviour: Behaviour.circular);
  }
}
