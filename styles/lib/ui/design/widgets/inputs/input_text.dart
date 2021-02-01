import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final CrossAxisAlignment crossAxisAlignment;
  final EdgeInsets padding;
  final Widget child;
  final InputDecoration decoration;

  const InputText({
    Key key,
    @required this.crossAxisAlignment,
    @required this.padding,
    @required this.child,
    @required this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Padding(
          padding: padding,
          child: child,
        ),
        TextField(
          decoration: decoration,
        ),
      ],
    );
  }
}
