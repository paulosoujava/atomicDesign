import 'package:atom/design/atom/images/atom_image.dart';
import 'package:atom/design/core/behaviors.dart';
import 'package:atom/design/core/component.dart';

import 'package:flutter/material.dart';

class BehaviorImage extends StatelessWidget with Component {
  final Behaviour behaviour;
  final double width, height;

  const BehaviorImage({this.behaviour, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return render(context, behaviour);
  }

  @override
  Widget whenCircle(BuildContext context, Behaviour behaviour) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(80.0),
      child: AtomImage(urlPath: "https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
    );
  }

  @override
  Widget whenRectangle(BuildContext context, Behaviour behaviour) {
    return AtomImage(
      urlPath: "https://images.unsplash.com/photo-1547721064-da6cfb341d50",
      width: width,
      height: height,
    );
  }
}
