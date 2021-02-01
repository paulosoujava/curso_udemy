import 'package:flutter/material.dart';

import '../../../ui.dart';

class Button extends StatelessWidget {
  final Behaviour behaviour;
  final Function onPressed;
  final Widget child;
  final Color color, colorText, colorDisabled, colorDisabledText, colorSplashColor;
  final EdgeInsetsGeometry padding;

  const Button({
    Key key,
    @required this.behaviour,
    this.onPressed,
    this.child,
    this.color,
    this.colorText,
    this.colorDisabled,
    this.colorDisabledText,
    this.colorSplashColor,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: child,
      onPressed: onPressed,
      color: color,
      textColor: colorText,
      disabledColor: colorDisabled,
      disabledTextColor: colorDisabledText,
      padding: padding,
      splashColor: colorSplashColor,
    );
  }
}
