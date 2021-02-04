import 'package:atom/design/utils/colors/colors_app.dart';
import 'package:atom/design/utils/sizes/sizes.dart';
import 'package:flutter/material.dart';

Widget line({Color color, double thickness}) => Divider(
      color: color ?? GRAY,
      thickness: thickness ?? H_2,
    );
