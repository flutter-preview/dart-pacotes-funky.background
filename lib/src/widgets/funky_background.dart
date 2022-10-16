import 'package:flutter/material.dart';
import 'package:funky_backgrounds/funky_backgrounds.dart';

class FunkyBackground extends StatelessWidget {
  final FunkyBackgroundPainter painter;

  final Widget? child;

  const FunkyBackground({
    Key? key,
    required this.painter,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: painter,
      child: child,
    );
  }
}
