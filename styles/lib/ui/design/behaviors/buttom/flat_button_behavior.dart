import 'package:flutter/material.dart';
import '../../../ui.dart';

class FlatButtonBehavior extends StatelessWidget with ConcretBehavior {
  final Behaviour behaviour;
  final GestureTapCallback onTap;
  final Color backgroundColor;
  final BoxBorder border;
  final String label;
  final TextStyle textStyle;

  const FlatButtonBehavior({
    this.behaviour,
    this.onTap,
    this.backgroundColor,
    this.border,
    this.label,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return render(context, behaviour);
  }

  @override
  Widget whenEmpty(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: mediaQuery(context).width,
        height: H_60,
        decoration: BoxDecoration(
          color: backgroundColor ?? TRANSPARENT,
          borderRadius: BorderRadius.circular(16),
          border: Border.fromBorderSide(BorderSide(
            color: Colors.grey,
          )),
        ),
        child: Center(
          child: Text(
            label,
            style: textStyle ?? TextStyle(color: BLACK, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  @override
  Widget whenDisabled(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: mediaQuery(context).width,
        height: H_60,
        decoration: BoxDecoration(
          color: GRAY,
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

  @override
  Widget whenRegular(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: mediaQuery(context).width,
        height: H_60,
        decoration: BoxDecoration(
          color: backgroundColor ?? AMBER_ACCENT,
          borderRadius: BorderRadius.circular(16),
          border: border,
        ),
        child: Center(
          child: Text(
            label,
            style: textStyle ??
                TextStyle(
                  color: BLACK,
                ),
          ),
        ),
      ),
    );
  }

  @override
  Widget whenLoading(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: mediaQuery(context).width,
        height: 60,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
          border: border,
        ),
        child: Center(
          child: Column(
            children: [
              CircularProgressIndicator(),
              Text(
                label,
                style: textStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
