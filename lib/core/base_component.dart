import 'package:atom/core/behaviors.dart';
import 'package:flutter/material.dart';

abstract class BaseComponent {
  Widget whenRegular(BuildContext context, Behaviour behaviour);

  Widget whenLoading(BuildContext context, Behaviour behaviour);

  Widget whenError(BuildContext context, Behaviour behaviour);

  Widget whenDisabled(BuildContext context, Behaviour behaviour);

  Widget whenEmpty(BuildContext context, Behaviour behaviour);

  Widget whenCircle(BuildContext context, Behaviour behaviour);

  Widget whenRectangle(BuildContext context, Behaviour behaviour);

  Widget render(BuildContext context, Behaviour behaviour);
}
