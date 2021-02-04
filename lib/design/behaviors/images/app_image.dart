import 'package:atom/design/behaviors/images/behavior_image.dart';
import 'package:atom/design/core/behaviors.dart';

class AppImage {
  static rectangularImage({double width, double height}) {
    return BehaviorImage(behaviour: Behaviour.rectagular, width: width, height: height);
  }

  static circularImage({double width, double height}) {
    return BehaviorImage(behaviour: Behaviour.circular, width: width, height: height);
  }
}
