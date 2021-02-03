import 'package:atom/behaviors/images/behavior_image.dart';
import 'package:atom/core/behaviors.dart';

class AppImage {
  static rectangularImage() {
    return BehaviorImage(behaviour: Behaviour.rectagular);
  }

  static circularImage() {
    return BehaviorImage(behaviour: Behaviour.circular);
  }
}
