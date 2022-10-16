import 'package:flutter/material.dart';

part 'conic_curves.dart';
part 'lines.dart';
part 'triangles.dart';

abstract class FunkyBackgroundPainter extends CustomPainter {
  const FunkyBackgroundPainter();

  @override
  bool shouldRepaint(
    covariant CustomPainter oldDelegate,
  ) {
    return false;
  }
}
