import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:sawamall/utils/ui_helper.dart';
import 'package:sawamall/widgets/custom_filled_button.dart';
import 'package:sawamall/widgets/custom_text.dart';
import 'package:sawamall/widgets/custom_text_field.dart';
import 'package:sawamall/widgets/logo_widget.dart';

class ForgetView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: EdgeInsets.only(left: 16,right: 16,top: MediaQuery.of(context).size.height*.2),
        child: Column(
            children:[
          LogoWidget(),
          UIHelper.verticalSpaceMedium(),
           CustomText(text: 'هل نسيت كلمة؟',),
          UIHelper.verticalSpaceMedium(),
          CustomTextField(labelText: 'البريد الالكتروني',),
          UIHelper.verticalSpaceMedium(),
          CustomButton(text: 'إرسال',),
          UIHelper.verticalSpaceMedium(),
          Text("تسجيل دخول", style: new TextStyle(color: Theme.of(context).accentColor, decoration: TextDecoration.underline),)


        ]),
      ) ,



    );
  }
}
