import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomHeadline extends StatelessWidget {
  final String title;
  final int count;
  final Function onPressed;
  List<Widget> widgets=[];
  final Color countBg;
  final Color countTextColor;



  CustomHeadline({this.title, this.count=0,this.onPressed,this.countBg=const Color(0xFF4D4D4D),this.countTextColor=Colors.white});

  @override
  Widget build(BuildContext context) {
    widgets.add( Expanded(child: CustomText(color:  Colors.grey.shade500,text: title,)),);
    if(count!=0){
      widgets.add( Container(
          padding: EdgeInsets.symmetric(vertical: 2,horizontal: 16),
          decoration: BoxDecoration(
              color: countBg,
              borderRadius: BorderRadius.all(Radius.circular(15),


              )
          ),

          child: Visibility(visible: count!=0,child: CustomText(text:'$count',color: countTextColor,fontSize: 12,))),);
    }
    widgets.add(Icon(Icons.arrow_forward_ios),);

    return  GestureDetector(
      onTap: onPressed,
      child: Row(
        children: widgets,
      ),
    );
  }
}
