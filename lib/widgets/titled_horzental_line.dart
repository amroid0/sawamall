import 'package:flutter/material.dart';
import 'package:sawamall/widgets/custom_text.dart';

class TitleHorizontalLine extends StatelessWidget {
  final String title;

  TitleHorizontalLine(this.title);

  @override
  Widget build(BuildContext context) {

      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CustomPaint(painter: Drawhorizontalline(true)),
          CustomText(text: title,fontSize: 20,color: Colors.green,),
          CustomPaint(painter: Drawhorizontalline(false))
        ],
      );

  }
}

class Drawhorizontalline extends CustomPainter {
  Paint _paint;
  bool reverse;

  Drawhorizontalline(this.reverse) {
    _paint = Paint()
      ..color = Colors.grey.shade500
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    if (reverse) {
      canvas.drawLine(Offset(-250.0, 0.0), Offset(-10.0, 0.0), _paint);
    } else {
      canvas.drawLine(Offset(10.0, 0.0), Offset(250.0, 0.0), _paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
