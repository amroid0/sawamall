
import 'package:flutter/material.dart';
import 'package:sawamall/constants/colors.dart';
import 'package:sawamall/generated/l10n.dart';
import 'package:sawamall/widgets/triangle_ribbone.dart';

import '../r.g.dart';
import 'arc_ribbon.dart';

class ItemList extends StatelessWidget {
  final int item;

  const ItemList({@required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Card(
        color: AppColors.cardColor,
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                Align(alignment: Alignment.topLeft,
                child:  Container(
                  margin: EdgeInsets.only(top: 0),
                  child: ClipPath(
                    clipper: ArcClipper(),
                    child: Container(
                        width: 60.0,
                        height: 30.0,
                        color: Colors.red,
                        child: Center(
                            child: Text(
                              '23%',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0),
                            ))),
                  ),
                ),
                )


                ]
              ),
            ),
            new Padding(
              padding: EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "بن قبرصيهيلسوعك مسشامسيشامسينمشميشيس",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [Text(
                      "14 رس",
                      style: TextStyle(
                        color: AppColors.priceColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(width: 8,),
                Text(
                  "66 رس",
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: AppColors.priceColor,
                      fontSize: 12.0,
                  ),
                ),

                    ]
                  ),
                  SizedBox(height: 0.0),
  Center(child: FlatButton.icon(onPressed: null, icon: Icon(Icons.add_shopping_cart,size: 20,), label:Text(S.of(context).add,style: TextStyle(fontSize: 12),))),
                  SizedBox(height: 2.0),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
