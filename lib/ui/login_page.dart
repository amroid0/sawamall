import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sawamall/widgets/custom_filled_button.dart';
import 'package:sawamall/widgets/custom_social_button.dart';
import 'package:sawamall/widgets/custom_tabs.dart';
import 'package:sawamall/widgets/custom_text.dart';
import 'package:sawamall/widgets/custom_text_field.dart';
import 'package:sawamall/widgets/titled_horzental_line.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var _obscureText = true;
  List<String> tabs = ['البريد الالكتروني', 'رقم الهاتف'];
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .6,
                  height: 170,
                  child: Image.asset('assets/images/logo.png'),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text:
                      'يمكنك تسجيل الدخول بواسطة بريدك الإلكتروني أو رقم الجوال',
                ),
                SizedBox(
                  height: 10,
                ),
                SegmentedControl(
                  tabs,
                  onTabSelected: (value) {
                    setState(() {
                      _selectedTabIndex = value;
                    });
                  },
                ),
                SizedBox(
                  height: 26,
                ),
                CustomTextField(
                  labelText: _selectedTabIndex==0?'البريد الالكتروني':'رقم الهاتف',
                  suffixIcon: Icon(
                    Icons.close_outlined,
                    color: Colors.grey.shade500,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  isPassword: true,
                  labelText: 'كلمه المرور',

                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: 'تسجيل الدخول ',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: 'نسيت كلمه المرور',
                ),
                SizedBox(
                  height: 10,
                ),
                TitleHorizontalLine('او'),
                SizedBox(
                  height: 16,
                ),
                CustomText(
                  text: 'يمكنك الدخول عن طريق مواقع التواصل الاجتماعي',
                ),
                SizedBox(
                  height: 16,
                ),
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
                SizedBox(
                  height: 24,
                ),
                CustomButton(
                  text: 'تسجيل حساب جديد',
                  onPressed: () {},
                  filledColor: Colors.white,
                  textColor: Theme.of(context).accentColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
