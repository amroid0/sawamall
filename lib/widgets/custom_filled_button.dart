import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color filledColor;
  final Color textColor;
  final Function onPressed;

  CustomButton({this.text='',
    this.filledColor, this.textColor=Colors.white, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      child: RaisedButton(

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Theme.of(context).accentColor)),
        onPressed:onPressed,
        color: filledColor??Theme.of(context).accentColor,
        textColor: textColor,
        child: Text(text,
            style: TextStyle(fontSize: 14,color: textColor)),
      ),
    );
  }
}
