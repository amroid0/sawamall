import 'package:flutter/material.dart';
import 'package:sawamall/generated/l10n.dart';

import '../routes.dart';
import 'circle_button.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;

  CustomAppBar(
      this.title,
      { Key key,}) : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Row(
        children: [
          Container(width:100,child: Image.asset('assets/images/logo.png',)),

          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 8,),
                  Expanded(
                    child: Container(
                      height: 50,
                      child: TextFormField(
                        readOnly: true,
                        enableInteractiveSelection: true,
                        onTap: (){
                          Navigator.pushNamed(context, RouteGenerator.search);
                        },
                        onChanged: (value) {

                        },
                        maxLines: 1,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(10,0,10,-20),
                            hintText:S.of(context).search,
                            labelStyle:TextStyle(fontSize: 12) ,
                            hintStyle: TextStyle(fontSize: 12,color: Colors.grey),
                            fillColor: Color(0xffd3d3d3),
                            suffixIcon: CircleIconButton(icon: Icons.search,),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(Radius.circular(25.0)))),
                      ),
                    ),
                  ),
                ]
            ),
          ),

        ]


      ),
    );
  }
}