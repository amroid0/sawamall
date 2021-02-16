import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomTextField extends StatefulWidget {
  final String labelText;
  final Icon suffixIcon;
  final Function onIconPressed;
  final bool obscureText;
  TextEditingController controller;
  final bool isPassword;

  CustomTextField({this.isPassword=false,this.controller ,this.labelText, this.suffixIcon=const Icon(FontAwesomeIcons.timesCircle), this.onIconPressed,this.obscureText=false});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  var _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        maxLines: 1,
        obscureText: widget.isPassword?_obscureText:false,
        decoration: InputDecoration(
            hintText: widget.labelText,
            isDense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 8),
            hintStyle: TextStyle(color: const Color(0xff6E6E6E), fontSize: 16),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).accentColor),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            suffixIcon:
                GestureDetector(onTap: widget.onIconPressed??(){
                  if(widget.isPassword){
                    setState(() {
                      _obscureText= !   _obscureText;
                    });
                  }
                  if(widget.controller==null){
                    widget.controller=new TextEditingController();
                  }
                  widget. controller.clear();

                }, child: widget.isPassword?Icon(Icons.remove_red_eye,color: Colors.grey.shade500,):widget.suffixIcon)),

      ),
    );
  }
}
