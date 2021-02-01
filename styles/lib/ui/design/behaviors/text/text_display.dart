import 'package:flutter/material.dart';

import '../../../ui.dart';

class TextDisplay extends StatelessWidget with ConcretDisplay {
  final Display display;
  final String label;
  final TextStyle style;

  const TextDisplay({
    Key key,
    this.display,
    this.label,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return render(context, display);
  }

  @override
  Widget whenTitle(BuildContext context) {
    return Text(
      label,
      style: style ?? TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
    );
  }

  @override
  Widget whenSubtitle(BuildContext context) {
    return Text(
      label,
      style: style ?? TextStyle(fontSize: 18),
    );
  }
}
