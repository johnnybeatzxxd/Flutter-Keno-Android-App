import "package:flutter/material.dart";
import "dart:math";


class LinePainter extends CustomPainter {
  final Random random = Random();
  final BuildContext context;

  LinePainter(this.context);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color =  Theme.of(context).colorScheme.onBackground.withOpacity(0.08)
      ..strokeWidth = 0.5;

    for (var i = 0; i < size.width; i += 5 + random.nextInt(5)) {
      canvas.drawLine(Offset(i.toDouble(), 0), Offset(i.toDouble(), size.height), paint);
    }

    for (var i = 0; i < size.height; i += 5 + random.nextInt(10)) {
      canvas.drawLine(Offset(0, i.toDouble()), Offset(size.width, i.toDouble()), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
