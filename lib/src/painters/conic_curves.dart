part of 'funky_background_painter.dart';

class FunkyConicCurve extends FunkyBackgroundPainter {
  final Color color;

  const FunkyConicCurve(this.color);

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
}
