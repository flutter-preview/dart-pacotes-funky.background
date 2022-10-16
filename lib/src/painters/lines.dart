part of 'funky_background_painter.dart';

class FunkyRotatingLines extends FunkyBackgroundPainter {
  final Color color;

  const FunkyRotatingLines(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color.withOpacity(.15)
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0;

    for (var i = 0.0; i < size.height; i += 30.0) {
      canvas.drawLine(
        Offset(i, 0),
        Offset(size.width, size.height - i),
        paint,
      );
      canvas.drawLine(
        Offset(0, i),
        Offset(size.width - i, size.height),
        paint,
      );
    }
  }
}

class FunkySquareGrid extends FunkyBackgroundPainter {
  final Color color;

  const FunkySquareGrid(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color.withOpacity(.15)
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0;

    for (var i = 0.0; i < size.height; i += 5.0) {
      canvas.drawLine(
        const Offset(0, 0),
        Offset(size.width, size.height - i),
        paint,
      );
      canvas.drawLine(
        Offset(0, size.height),
        Offset(size.width, size.height - i),
        paint,
      );
      canvas.drawLine(
        Offset(size.width, 0),
        Offset(0, size.height - i),
        paint,
      );
      canvas.drawLine(
        Offset(size.width, size.height),
        Offset(0, size.height - i),
        paint,
      );
    }
  }
}

class FunkyBezierLines extends FunkyBackgroundPainter {
  final Color color;

  const FunkyBezierLines(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    final spacing = size.height * .02;

    for (var i = 0.0; i < size.height; i += spacing) {
      var path = Path();

      path.moveTo(0, i * 2);
      path.quadraticBezierTo(
        size.width * 1.5,
        i,
        size.width,
        size.height / 2 + i,
      );

      canvas.drawPath(path, paint);
    }
  }
}
