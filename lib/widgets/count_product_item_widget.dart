
import 'package:flutter/material.dart';
import 'package:sawamall/constants/colors.dart';
import 'package:sawamall/generated/l10n.dart';
import 'package:sawamall/utils/ui_helper.dart';
import 'package:sawamall/widgets/custom_filled_button.dart';
import 'package:sawamall/widgets/custom_text.dart';
import 'package:sawamall/widgets/triangle_ribbone.dart';

import '../r.g.dart';
import 'arc_ribbon.dart';

class CountItemList extends StatelessWidget {
  final int item;

  const CountItemList({@required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Container(
        width: MediaQuery.of(context).size.width*.4,
        child: Card(
          color: AppColors.cardColor,
          elevation: 1.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 18.0 / 12.0,
                child: Stack(
                  children:[
                    Center(
                      child: Image(image: R.image.product(),
                      fit: BoxFit.cover,
                  ),
                    ),



                  ]
                ),
              ),
              new Padding(
                padding: EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CustomText(text: '44',fontSize: 16,color: Color(0xFF137C7C),),
                    SizedBox(height: 0.0),
                    CustomText(text: 'منتج آخر',fontSize: 14,),
                    SizedBox(height: 8.0),
                    RaisedButton(

                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),),
                      onPressed:(){},
                      color: Color(0xFF35B6B3),
                      textColor: Colors.white,
                      child: Text('جميع منتجات الفئة',
                          style: TextStyle(fontSize: 12,color: Colors.white)),
                    ),
                    SizedBox(height: 2.0),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
