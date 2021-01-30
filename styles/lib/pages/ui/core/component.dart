import 'package:flutter/material.dart';
import 'behaviour.dart';
import 'interface_component.dart';

class Component implements IComponent {
  Widget render(BuildContext context, Behaviour behaviour) {
    switch (behaviour) {
      case Behaviour.regular:
        return whenRegular(context);
        break;

      case Behaviour.loading:
        return whenLoading(context);
        break;

      case Behaviour.error:
        return whenError(context);
        break;

      case Behaviour.empty:
        return whenEmpty(context);
        break;

      case Behaviour.disabled:
        return whenDisabled(context);
        break;

      default:
        throw "$behaviour is not implemented for $this";
    }
  }

  @override
  Widget whenDisabled(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget whenEmpty(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget whenError(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget whenLoading(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget whenRegular(BuildContext context) {
    throw UnimplementedError();
  }
}
