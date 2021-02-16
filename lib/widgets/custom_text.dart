import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
   final int maxLine;
  CustomText({
    this.text='',
    this.fontSize=16,
    this.color=const Color(0xff6E6E6E),
    this.maxLine=1
});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text,style: TextStyle(fontSize: fontSize,color: color,),maxLines:maxLine ,),

    );
  }
}
