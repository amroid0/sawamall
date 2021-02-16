import 'package:flutter/material.dart';
import 'package:sawamall/utils/ui_helper.dart';
import 'package:sawamall/widgets/custom_drop_down.dart';
import 'package:sawamall/widgets/custom_filled_button.dart';
import 'package:sawamall/widgets/custom_phone_text_field.dart';
import 'package:sawamall/widgets/custom_social_button.dart';
import 'package:sawamall/widgets/custom_text.dart';
import 'package:sawamall/widgets/custom_text_field.dart';
import 'package:sawamall/widgets/titled_horzental_line.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24,horizontal: 16),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .6,
                height: 170,
                child: Image.asset('assets/images/logo.png'),
              ),
              UIHelper.verticalSpaceMedium(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(child: CustomTextField(labelText: 'االاسم الاول',)),
                  UIHelper.horizontalSpaceSmall(),
                  Expanded(child: CustomTextField(labelText: 'الاسم الاخير',))
                ],
              ),

              UIHelper.verticalSpaceMedium(),
              CustomTextField(
                labelText:'البريد الالكتروني',
              ),
              UIHelper.verticalSpaceMedium(),

              PhoneWidget(),
              UIHelper.verticalSpaceMedium(),

              CustomTextField(
                isPassword: true,
                labelText: 'كلمه المرور',

              ),
              UIHelper.verticalSpaceMedium(),
              CustomTextField(
                isPassword: true,
                labelText: 'تأكيد كلمه المرور',

              ),
              TitleHorizontalLine('او'),
              UIHelper.verticalSpaceMedium(),

              CustomText(
                text: 'يمكنك الدخول عن طريق مواقع التواصل الاجتماعي',
              ),
              UIHelper.verticalSpaceMedium(),

              Row(
                children: [
                  Expanded(
                    child: CustomSoicalButton(
                      onPresseed: () {},
                      iconres: 'assets/images/instagram.png',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CustomSoicalButton(
                      onPresseed: () {},
                      iconres: 'assets/images/google.png',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CustomSoicalButton(
                      onPresseed: () {},
                      iconres: 'assets/images/facebook.png',
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpaceMedium(),

              CustomButton(
                text: 'تسجيل حساب جديد',
                onPressed: () {},

              ),

              UIHelper.verticalSpaceMedium(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                CustomText(text:'هل لديك حساب?'),
                 Text("تسجيل دخول", style: new TextStyle(color: Theme.of(context).accentColor, decoration: TextDecoration.underline),)

              ],
            )


            ],
          ),
        ),
      ),

    );
  }
}
