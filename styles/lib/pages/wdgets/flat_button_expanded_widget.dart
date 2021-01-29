import 'package:flutter/material.dart';
import 'package:styles/pages/styles/flat_button_expaned_style.dart';

enum FlatButtonExpandedType { fill, none, outline }

class FlatButtonExpandedWidget extends StatelessWidget {
  final String label;
  final FlatButtonExpandedType type;
  final VoidCallback onTap;

  const FlatButtonExpandedWidget({
    Key key,
    @required this.label,
    this.type = FlatButtonExpandedType.fill,
    @required this.onTap,
  }) : super(key: key);

  Color get backgroundColor => flatButtonExpandedStyle[type]['backgroundColor'];
  TextStyle get textStyle => flatButtonExpandedStyle[type]['textStyle'];
  BoxBorder get border => flatButtonExpandedStyle[type]['border'];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size.width,
        height: 60,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
          border: border,
        ),
        child: Center(
          child: Text(
            label,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
