import 'package:flutter/material.dart';
import '../../../ui.dart';

class InputBehavior extends StatelessWidget with ConcretBehavior {
  final Behaviour behaviour;
  final String label;

  const InputBehavior({
    Key key,
    @required this.behaviour,
    @required this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return render(context, behaviour);
  }

  @override
  Widget whenRegular(BuildContext context) {
    return InputText(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.only(bottom: 12),
      child: Text(
        label,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
      ),
      decoration: InputDecoration(border: OutlineInputBorder()),
    );
  }
}
