import 'package:flutter/material.dart';

import '../core.dart';

abstract class IBehavior {
  Widget render(BuildContext context, Behaviour behaviour);
  Widget whenRegular(BuildContext context);
  Widget whenLoading(BuildContext context);
  Widget whenError(BuildContext context);
  Widget whenDisabled(BuildContext context);
  Widget whenEmpty(BuildContext context);
}
