import 'package:flutter/material.dart';
import 'package:sawamall/utils/ui_helper.dart';
import 'package:sawamall/widgets/count_product_item_widget.dart';
import 'package:sawamall/widgets/custom_appbar.dart';
import 'package:sawamall/widgets/custom_headline.dart';
import 'package:sawamall/widgets/custom_text.dart';
import 'package:sawamall/widgets/product_item_widget.dart';

class AllCategoryProductsScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<AllCategoryProductsScreen> {
  List<DropdownMenuItem<String>> _buildFavouriteFoodModelDropdown(
      List favouriteFoodModelList) {
    List<DropdownMenuItem<String>> items = List();
    for (String favouriteFoodModel in favouriteFoodModelList) {
      items.add(DropdownMenuItem(
        value: favouriteFoodModel,
        child: Text(favouriteFoodModel),
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.5;
    final double itemWidth = size.width / 2;
    return Scaffold(
        appBar: CustomAppBar(''),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.filter_list),
          onPressed: () {},
        ),
        body: Column(
          children: [
            UIHelper.verticalSpaceMedium(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.menu,color: Theme.of(context).accentColor,size: 30,),
                  UIHelper.horizontalSpaceSmall(),
                  Expanded(

                    child: Container(
                      height: 30,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return CustomText(text:'cate1');
                        },
                        itemCount: 15,
                        separatorBuilder: (BuildContext context, int index) {
                          return CustomText(text:' | ');
                        },

                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(10),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 10),
                    height: 300,
                    child: Column(
                      children: <Widget>[
                        CustomHeadline(
                          title: 'عروض اليوم',
                          countBg: Colors.grey.shade200,
                          count: 100,
                          countTextColor: Colors.grey.shade800,
                          onPressed: () {},
                        ),
                        UIHelper.verticalSpaceMedium(),
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              if(index==3)
                              return CountItemList(item: 0);
                              else
                                return ItemList(item: 0);

                            },
                            itemCount: 4,
                          ),
                        )
                      ],
                    ),
                  );
                },
                itemCount: 100,
              ),
            ),
          ],
        ));
  }
}



