import 'package:atom/design/atom/input/atom_input.dart';
import 'package:atom/design/core/behaviors.dart';
import 'package:atom/design/core/component.dart';
import 'package:flutter/material.dart';

class BehaviorInput extends StatelessWidget with Component {
  final Behaviour behaviour;

  const BehaviorInput({Key key, this.behaviour}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(context, behaviour);
  }

  @override
  Widget whenRegular(BuildContext context, Behaviour behaviour) {
    return AtomInput();
  }
}
