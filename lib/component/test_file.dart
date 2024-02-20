import 'package:flutter/material.dart';
import 'dart:math';



class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Half Circle Flutter'),
        ),
        body: Center(
          child: HalfCircle(),
        ),
      ),
    );
  }
}

class HalfCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HalfCirclePainter(),
    );
  }
}

class HalfCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final centerX = size.width / 2;
    final centerY = size.height;
    final radius = size.width / 2;

    final path = Path()
      ..moveTo(centerX - radius, centerY)
      ..arcTo(
        Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
        pi,
        pi,
        false,
      )
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
