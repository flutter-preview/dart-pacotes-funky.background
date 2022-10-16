import 'package:flutter/material.dart';
import 'package:funky_backgrounds/funky_backgrounds.dart';

class FunkyBackground extends StatelessWidget {
  final FunkyBackgroundPainter painter;

  final Widget? child;

  final Size size;

  const FunkyBackground({
    Key? key,
    required this.painter,
    this.child,
    this.size = Size.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: painter,
      size: size,
      child: child,
    );
  }
}
