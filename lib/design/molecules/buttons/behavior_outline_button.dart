import 'package:atom/design/atom/texts/atom_text.dart';
import 'package:atom/design/core/behaviors.dart';
import 'package:atom/design/core/component.dart';
import 'package:atom/design/molecules/buttons/outline_button.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BehaviorOutlineButton extends StatelessWidget with Component {
  final Behaviour behavior;
  final Function onPressed;
  final double width;
  final AtomText label;

  const BehaviorOutlineButton({Key key, this.behavior, this.onPressed, this.width, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(context, behavior);
  }

  @override
  Widget whenDisabled(BuildContext context, Behaviour behaviour) {
    return MoleculeOutlineButton(
      autofocus: false,
      disabledTextColor: Colors.grey[100],
      atomText: AtomText(
        label: 'whenDisabled',
      ),
    );
  }

  @override
  Widget whenLoading(BuildContext context, Behaviour behaviour) {
    return MoleculeOutlineButton(
      autofocus: false,
      highlightElevation: 12,
      atomText: label,
    );
  }

  @override
  Widget whenError(BuildContext context, Behaviour behaviour) {
    return MoleculeOutlineButton(
      autofocus: false,
      highlightColor: Colors.grey[100],
      highlightElevation: 12,
      onPressed: () {
        print('CLICK');
      },
      atomText: label,
    );
  }

  @override
  Widget whenRegular(BuildContext context, Behaviour behaviour) {
    assert(onPressed != null);
    return Container(
      width: width ?? 200,
      height: 55,
      color: Colors.amberAccent,
      child: MoleculeOutlineButton(
        autofocus: true,
        color: Colors.amberAccent,
        highlightElevation: 12,
        onPressed: onPressed,
        atomText: label,
      ),
    );
  }
}
