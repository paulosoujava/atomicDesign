import 'package:atom/core/base_component.dart';
import 'package:atom/core/behaviors.dart';
import 'package:flutter/material.dart';

class Component implements BaseComponent {
  Widget render(
    BuildContext context,
    Behaviour behaviour,
  ) {
    switch (behaviour) {
      case Behaviour.regular:
        return whenRegular(context, behaviour);
        break;

      case Behaviour.loading:
        return whenLoading(context, behaviour);
        break;

      case Behaviour.error:
        return whenError(context, behaviour);
        break;

      case Behaviour.empty:
        return whenEmpty(context, behaviour);
        break;

      case Behaviour.disabled:
        return whenDisabled(context, behaviour);
        break;

      case Behaviour.rectagular:
        return whenRectangle(context, behaviour);
        break;

      case Behaviour.circular:
        return whenCircle(context, behaviour);
        break;

      default:
        throw "$behaviour is not implemented for $this";
    }
  }

  @override
  Widget whenDisabled(BuildContext context, Behaviour behaviour) {
    throw UnimplementedError();
  }

  @override
  Widget whenEmpty(BuildContext context, Behaviour behaviour) {
    throw UnimplementedError();
  }

  @override
  Widget whenError(BuildContext context, Behaviour behaviour) {
    throw UnimplementedError();
  }

  @override
  Widget whenLoading(BuildContext context, Behaviour behaviour) {
    throw UnimplementedError();
  }

  @override
  Widget whenRegular(BuildContext context, Behaviour behaviour) {
    throw UnimplementedError();
  }

  @override
  Widget whenCircle(BuildContext context, Behaviour behaviour) {
    throw UnimplementedError();
  }

  @override
  Widget whenRectangle(BuildContext context, Behaviour behaviour) {
    throw UnimplementedError();
  }
}
