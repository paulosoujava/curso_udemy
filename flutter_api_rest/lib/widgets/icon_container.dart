import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final double size;
  const IconContainer({Key key, @required this.size})
      : assert(size != null && size > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            size * 0.15,
          ),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 20, offset: Offset(0, 15))]),
      padding: EdgeInsets.all(size * 0.15),
      child: Center(
        child: Image.asset(
          'assets/icon.png',
          fit: BoxFit.fill,
          width: size * 0.9,
          height: size * 0.9,
        ),
      ),
    );
  }
}
