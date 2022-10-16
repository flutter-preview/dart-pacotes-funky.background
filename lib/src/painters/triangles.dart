part of 'funky_background_painter.dart';

class FunkyHorizontalTriangles extends FunkyBackgroundPainter {
  final Color color;

  const FunkyHorizontalTriangles(this.color);

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
}

class FunkyShiftedTriangle extends FunkyBackgroundPainter {
  final Color color;

  const FunkyShiftedTriangle(this.color);

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
}

class FunkyLateralTriangles extends FunkyBackgroundPainter {
  final Color color;

  const FunkyLateralTriangles(this.color);

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
}

class FunkyStretchedTriangles extends FunkyBackgroundPainter {
  final Color color;

  const FunkyStretchedTriangles(this.color);

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
}
