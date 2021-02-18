import 'package:flutter/material.dart';
import 'package:sawamall/utils/ui_helper.dart';
import 'package:sawamall/widgets/custom_drop_down.dart';
import 'package:sawamall/widgets/custom_filled_button.dart';
import 'package:sawamall/widgets/custom_phone_text_field.dart';
import 'package:sawamall/widgets/custom_social_button.dart';
import 'package:sawamall/widgets/custom_text.dart';
import 'package:sawamall/widgets/custom_text_field.dart';
import 'package:sawamall/widgets/logo_widget.dart';
import 'package:sawamall/widgets/titled_horzental_line.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24,horizontal: 16),
            child: Column(
              children: [
                LogoWidget(),
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
              SizedBox(
                width: double.infinity,
                child: DecoratedBox(
                    decoration:  BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                            border: Border.all(
                              color: Colors.grey.shade500,
                              width: 1,
                            )),
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<String>(
                          value: "حلويات",
                          iconSize: 30,
                          icon: (null),
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                          hint: Text('Select State'),
                          onChanged: (String newValue) {

                          },
                          items:  <String>['حلويات', 'Country', 'State'].map((item) {
                            return new DropdownMenuItem(
                              child: new Text(item),
                              value: item.toString(),
                            );
                          })?.toList() ??
                              [],
                        ),
                      ),
                    ),
                  ),
              ),
                UIHelper.verticalSpaceMedium(),
              SizedBox(
                width: double.infinity,
                child: DecoratedBox(
                    decoration:  BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                      border: Border.all(
                        color: Colors.grey.shade500,
                        width: 1,
                      )),
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<String>(
                          value: "حلويات",
                          iconSize: 30,
                          icon: (null),
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                          hint: Text('Select State'),
                          onChanged: (String newValue) {

                          },
                          items:  <String>['حلويات', 'Country', 'State'].map((item) {
                            return new DropdownMenuItem(
                              child: new Text(item),
                              value: item.toString(),
                            );
                          })?.toList() ??
                              [],
                        ),
                      ),
                    ),
                  ),
              ),
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
      ),

    );
  }
}
