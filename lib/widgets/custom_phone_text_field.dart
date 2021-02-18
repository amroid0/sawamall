import 'package:flutter/material.dart';
import 'package:sawamall/utils/extentios.dart';
import 'package:sawamall/utils/ui_helper.dart';
class PhoneWidget extends StatefulWidget {
  @override
  _PhoneWidgetState createState() => _PhoneWidgetState();
}

class _PhoneWidgetState extends State<PhoneWidget> {
  String _selectedCountryCode;
  List<String> _countryCodes = ['+91', '+23'];
  List<String> _flags = ['assets/images/sa.png', 'assets/images/iq.png'];


  @override
  Widget build(BuildContext context) {
    var countryDropDown = Container(
      decoration:  BoxDecoration(
        color: Colors.white,
        border: Border(
          left: BorderSide( color: Colors.grey),
        ),
      ),
      height: 45.0,
      margin: const EdgeInsets.all(3.0),
      //width: 300.0,
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton(
            value: _selectedCountryCode,
            items: _countryCodes.mapIndexed((String value,int index) {
              return  DropdownMenuItem<String>(
                  value: value,
                  child:  Row(
                    children: [
                      Image.asset(_flags[index],width: 24,height: 24,),
                      UIHelper.horizontalSpaceSmall(),
                      Text(
                      value,
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ]));
            }).toList(),
            onChanged: (value) {
              setState(() {
                _selectedCountryCode = value;
              });
            },
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
         return Container(
      child: TextFormField(
        maxLines: 1,
        decoration: InputDecoration(
            hintText: 'رقم الهاتف',
            isDense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 8),
            hintStyle: TextStyle(color: const Color(0xff6E6E6E), fontSize: 16),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).accentColor),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            prefixIcon:
            GestureDetector(onTap: (){


            },
    child:countryDropDown),

      ),
    ));
  }
}
