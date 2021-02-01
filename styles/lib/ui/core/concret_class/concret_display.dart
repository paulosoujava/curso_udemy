import 'package:flutter/material.dart';

import '../core.dart';

class ConcretDisplay implements IDisplay {
  @override
  Widget render(BuildContext context, Display display) {
    switch (display) {
      case Display.title:
        return whenTitle(context);

      case Display.subtitle:
        return whenSubtitle(context);

      default:
        throw "$display is not implemented for $this";
    }
  }

  @override
  Widget whenTitle(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget whenSubtitle(BuildContext context) {
    throw UnimplementedError();
  }
}
