import 'package:flutter/material.dart';
import 'package:sawamall/utils/ui_helper.dart';
import 'package:sawamall/widgets/custom_filled_button.dart';
import 'package:sawamall/widgets/custom_text.dart';
import 'package:sawamall/widgets/custom_text_field.dart';
import 'package:sawamall/widgets/logo_widget.dart';

class ResetPasswordView extends StatefulWidget {
  @override
  _ResetPasswordViewState createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: EdgeInsets.only(left: 16,right: 16,top: MediaQuery.of(context).size.height*.2),
        child: Column(
            children:[
              LogoWidget(),
              UIHelper.verticalSpaceMedium(),
              CustomText(text: 'إعادة ضبط كلمة المرورر',),
              UIHelper.verticalSpaceMedium(),
              CustomTextField(labelText: 'كلمه المرور الجديده',isPassword: true,),
              UIHelper.verticalSpaceMedium(),
              CustomTextField(labelText: 'إعادة ادخال كلمة المرور',isPassword: true,),
              UIHelper.verticalSpaceMedium(),
              CustomButton(text: 'إرسال',),


            ]),
      ) ,



    );
  }
}
