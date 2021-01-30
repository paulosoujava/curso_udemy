import 'package:flutter/material.dart';
import '../../core/behaviour.dart';
import '../../core/component.dart';
import '../../tokens/buttons/buttom_atom.dart';

class ButtomBehavior extends StatelessWidget with Component {
  final Behaviour behaviour;
  final Function onPress;
  const ButtomBehavior({this.behaviour, this.onPress});

  @override
  Widget build(BuildContext context) {
    return render(context, behaviour);
  }

  @override
  Widget whenDisabled(BuildContext context) {
    return ButtomAtom(
      child: Text('DISABLED'),
      onPressed: null,
      behaviour: behaviour,
      padding: EdgeInsets.all(8),
      colorDisabled: Colors.grey,
      colorDisabledText: Colors.white,
    );
  }

  @override
  Widget whenRegular(BuildContext context) {
    return ButtomAtom(
      child: Text("REGULAR"),
      onPressed: onPress ??
          () {
            print("funciton default");
          },
      padding: EdgeInsets.all(8),
      color: Colors.black,
      colorSplashColor: Colors.yellow,
      colorText: Colors.white,
    );
  }

  @override
  Widget whenLoading(BuildContext context) {
    return ButtomAtom(
      child: Container(
        child: SizedBox(
          height: 300.0,
          width: 300.0,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.white),
            strokeWidth: 3.0,
          ),
        ),
        height: 30,
        width: 30,
      ),
      onPressed: () {
        print('DISABLED');
      },
      padding: EdgeInsets.all(8),
      color: Colors.grey,
      colorSplashColor: Colors.black12,
      colorText: Colors.white,
    );
  }
}
