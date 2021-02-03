import 'package:atom/atom/buttons/atom_outline_button.dart';
import 'package:atom/design/core/behaviors.dart';
import 'package:atom/design/core/component.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BehaviorOutlineButton extends StatelessWidget with Component {
  final Behaviour behavior;
  final Function onPressed;

  const BehaviorOutlineButton({Key key, this.behavior, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(context, behavior);
  }

  @override
  Widget whenDisabled(BuildContext context, Behaviour behaviour) {
    return AtomOutlineButton(
      autofocus: false,
      disabledTextColor: Colors.grey[100],
      child: Text("DISABLED",
          style: TextStyle(
            color: Colors.grey[800],
          )),
    );
  }

  @override
  Widget whenLoading(BuildContext context, Behaviour behaviour) {
    return AtomOutlineButton(
      autofocus: false,
      highlightElevation: 12,
      child: Container(
        width: 80,
        height: 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 15.0,
              width: 15.0,
              child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.blue), strokeWidth: 3.0),
            ),
            Text("LOADING",
                style: TextStyle(
                  color: Colors.grey[800],
                )),
          ],
        ),
      ),
    );
  }

  @override
  Widget whenError(BuildContext context, Behaviour behaviour) {
    return AtomOutlineButton(
      autofocus: false,
      highlightColor: Colors.grey[100],
      highlightElevation: 12,
      onPressed: () {
        print('CLICK');
      },
      child: Text("Error",
          style: TextStyle(
            color: Colors.red,
          )),
    );
  }

  @override
  Widget whenRegular(BuildContext context, Behaviour behaviour) {
    assert(onPressed != null);
    return AtomOutlineButton(
      autofocus: true,
      highlightElevation: 12,
      onPressed: onPressed,
      child: Text("Regular",
          style: TextStyle(
            color: Colors.grey[800],
          )),
    );
  }
}
