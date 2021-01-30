import 'package:flutter/material.dart';
import 'package:styles/pages/wdgets/flat_button_expanded_widget.dart';

const flatButtonExpandedStyle = {
  FlatButtonExpandedType.fill: {
    "backgroundColor": Colors.amberAccent,
    "textStyle": TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    "border": null,
  },
  FlatButtonExpandedType.none: {
    "backgroundColor": Colors.transparent,
    "textStyle": TextStyle(
      color: Colors.grey,
    ),
    "border": null,
  },
  FlatButtonExpandedType.outline: {
    "backgroundColor": Colors.transparent,
    "textStyle": TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    "border": const Border.fromBorderSide(BorderSide(
      color: Colors.grey,
    ))
  },
};
