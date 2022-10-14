import 'package:flutter/material.dart';

class FunkyConicCurve extends CustomPainter {
  final Color color;

  FunkyConicCurve(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0;

    final path = Path();
    path.conicTo(0, size.height * 2, size.width * 2, 0, 1.25);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(
    covariant CustomPainter oldDelegate,
  ) {
    return false;
  }
}
