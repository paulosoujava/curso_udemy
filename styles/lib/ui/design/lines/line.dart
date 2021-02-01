import 'package:flutter/material.dart';

import '../../ui.dart';

Widget line({Color color, double thickness}) => Divider(
      color: color ?? GRAY,
      thickness: thickness ?? H_2,
    );
