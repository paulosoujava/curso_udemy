import 'package:flutter/material.dart';

import '../core.dart';

abstract class IDisplay {
  Widget render(BuildContext context, Display display);
  Widget whenTitle(BuildContext context);
  Widget whenSubtitle(BuildContext context);
}
