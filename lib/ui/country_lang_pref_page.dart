import 'package:flutter/material.dart';
import 'package:sawamall/utils/ui_helper.dart';
import 'package:sawamall/widgets/custom_text.dart';
import 'package:sawamall/widgets/logo_widget.dart';

class CountryLangPrefScreen extends StatefulWidget {
  @override
  _CountryLangPrefScreenState createState() => _CountryLangPrefScreenState();
}

class _CountryLangPrefScreenState extends State<CountryLangPrefScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(children: [
            LogoWidget(),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: 'ساعدنا في تخصيص سوا مول بما يناسبك',
            ),
            Align(
              alignment: Alignment.topRight,
              child: CustomText(
                text: 'اختر الدوله',
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.grey.shade500,
              )),
              child: Column(
                children: [
                  ListTile(
                    title: const Text('المملكة العربية السعودية'),
                    leading: Radio(
                      value: 1,
                      groupValue: 0,
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                    trailing: Image.asset('assets/images/sa.png',width: 36,),
                  ),
                  Divider(),
                  ListTile(
                    title: const Text('جمهورية العراق'),
                    leading: Radio(
                      value: 1,
                      groupValue: 0,
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  trailing: Image.asset('assets/images/sa.png',width: 36,),
                  ),

                ],
              ),
            ),
            UIHelper.verticalSpaceMedium(),
            Align(
              alignment: Alignment.topRight,
              child: CustomText(
                text: 'اختراللغه',
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade500,
                  )),
               child: Column(
            children: [
            ListTile(
            title:  CustomText(text:'العربية'),
          leading: Radio(
            value: 1,
            groupValue: 0,
            onChanged: (value) {
              setState(() {});
            },
          ),
          trailing: Image.asset('assets/images/sa.png',width: 36,),
        ),
        Divider(),
        ListTile(
          selected: true,
          selectedTileColor: Color(0x2035B6B3),
          title:  CustomText(text:'English'),
          leading: Radio(
            value: 1,
            groupValue: 1,
            onChanged: (value) {
              setState(() {});
            },
          ),
          trailing: Image.asset('assets/images/sa.png',width: 36,),
        ),

        ],
      ),
            )
          ]),
        ),
      ),
    );
  }
}
