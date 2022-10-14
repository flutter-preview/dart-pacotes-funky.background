import 'package:flutter/material.dart';

class FunkyHorizontalTriangles extends CustomPainter {
  final Color color;

  FunkyHorizontalTriangles(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0;

    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, size.height / 2);
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width / 2, size.height / 2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(
    covariant CustomPainter oldDelegate,
  ) {
    return false;
  }
}

class FunkyShiftedTriangle extends CustomPainter {
  final Color color;

  FunkyShiftedTriangle(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0;

    final path = Path();

    path.lineTo(size.width, 0);

    path.lineTo(size.width, size.height);

    path.lineTo(size.width, 0);

    path.lineTo(size.width / 2, size.height);

    final shifted = path.shift(Offset(0, size.height * .58));

    canvas.drawPath(shifted, paint);
  }

  @override
  bool shouldRepaint(
    covariant CustomPainter oldDelegate,
  ) {
    return false;
  }
}

class FunkyLateralTriangles extends CustomPainter {
  final Color color;

  FunkyLateralTriangles(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0;

    final secondPaint = Paint()
      ..color = color.withOpacity(.4)
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0;

    final path = Path();
    final secondPath = Path();

    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height / 3);

    secondPath.moveTo(0, size.height / 1.5);
    secondPath.lineTo(size.width, size.height);
    secondPath.lineTo(size.width, size.height / 3);

    canvas.drawPath(path, paint);
    canvas.drawPath(secondPath, secondPaint);
  }

  @override
  bool shouldRepaint(
    covariant CustomPainter oldDelegate,
  ) {
    return false;
  }
}

class FunkyStretchedTriangles extends CustomPainter {
  final Color color;

  FunkyStretchedTriangles(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0;

    final secondPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0;

    final path = Path();
    final secondPath = Path();

    path.lineTo(size.width, 0);
    path.lineTo(0, size.height / 4);

    secondPath.moveTo(0, size.height);
    secondPath.lineTo(size.width, size.height);
    secondPath.lineTo(size.width, size.height / 4);

    canvas.drawPath(path, paint);
    canvas.drawPath(secondPath, secondPaint);
  }

  @override
  bool shouldRepaint(
    covariant CustomPainter oldDelegate,
  ) {
    return false;
  }
}
