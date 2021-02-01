import 'package:flutter/material.dart';

import '../../../ui.dart';

class Display extends StatelessWidget {
  final Behaviour behaviour;
  final String label;

  const Display({Key key, this.behaviour, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
    );
  }
}
