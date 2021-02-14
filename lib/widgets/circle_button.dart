import 'package:flutter/material.dart';
import 'package:sawamall/constants/colors.dart';

class CircleIconButton extends StatelessWidget {
  final double size;
  final Function onPressed;
  final IconData icon;
  final Color color;


  CircleIconButton({this.size = 30.0, this.icon = Icons.clear, this.onPressed,this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: this.onPressed,
        child: SizedBox(
            width: size,
            height: size,
            child: Stack(
              alignment: Alignment(0.0, 0.0), // all centered
              children: <Widget>[
                Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color:color ==null? Theme.of(context).accentColor:color),
                ),
                Icon(
                  icon,
                  size: size * 0.6,
                  color: AppColors.white,// 60% width for icon
                )
              ],
            )));
  }
}