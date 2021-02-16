import 'package:flutter/material.dart';

class CustomSoicalButton extends StatelessWidget {
  final Color color;
  final String  iconres;
  final Function onPresseed;

  CustomSoicalButton({this.color=Colors.white, this.iconres,this.onPresseed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: color)
        ),
        color: color,
        child:Image.asset(iconres,width: 24,height: 24,) ,
        onPressed: onPresseed,
      ),
    );
  }
}
