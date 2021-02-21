import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sawamall/utils/ui_helper.dart';
import 'package:sawamall/widgets/circle_button.dart';
import 'package:sawamall/widgets/custom_appbar.dart';
import 'package:sawamall/widgets/custom_headline.dart';
import 'package:sawamall/widgets/custom_text.dart';
import 'package:sawamall/widgets/product_item_widget.dart';

class CategoryProductsScreen extends StatefulWidget {
  @override
  _CategoryProductsScreenState createState() => _CategoryProductsScreenState();
}

class _CategoryProductsScreenState extends State<CategoryProductsScreen> {

  final List<String> _favouriteFoodModelList = [
    'Pudding',
    'Frozen Yogurt',
    'Chocolate Milk'
  ];
  List<DropdownMenuItem<String>> _favouriteFoodModelDropdownList;

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
    var size = MediaQuery
        .of(context)
        .size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.5;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: AppBar(title: Center(child: CustomText(text: 'clothes',color: Theme.of(context).accentColor,))
          ,leading: Icon(Icons.arrow_forward_ios_outlined,color: Theme.of(context).accentColor,),
        actions: [ Icon(Icons.search,color: Theme.of(context).accentColor,),

        ],elevation: 0,),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.filter_list),
        onPressed: () {
          _showFilterSheet();
        },),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
              children: [
                SizedBox(height: 8,),
                ListTile(title: CustomText(text:'ملابس حريمي'),
                  trailing: Container(
                    padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Color(0xFFEAF7F7)
                      ),
                      child: Icon(Icons.filter_list_outlined)),
                subtitle: CustomText(text:'ملابس حريمي',fontSize: 10,),),
                SizedBox(height: 8,),


                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: (itemWidth / itemHeight),
                    children: _buildGridCards(context),
                  ),
                ),
              ]
          ),
        ),
      ),


    );
  }

  List<Widget> _buildGridCards(BuildContext context) {
    List<int> products = [1, 2, 3, 4, 5, 6, 7];

    if (products == null || products.isEmpty) {
      return const <Card>[];
    }

    final ThemeData theme = Theme.of(context);
    final NumberFormat formatter = NumberFormat.simpleCurrency(
        locale: Localizations.localeOf(context).toString());

    return products.map((product) {
      return ItemList(item: product,);
    }).toList();
  }

  void _showFilterSheet() {
    showModalBottomSheet(
        context: context,
        backgroundColor: Color(0xffDCDCDC),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        ),
        builder: (context) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.filter_list, size: 36, color: Theme
                        .of(context)
                        .accentColor,),
                    SizedBox(width: 8,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Text("خيارات تصفيه المنتجات",
                          style: TextStyle(fontSize: 14, color: Colors
                              .black87),),
                        Row(children: [
                          Text("7 منتجات", style: TextStyle(fontSize: 12),),
                          SizedBox(width: 4,),
                          Text("إعادة تعيين >",
                            style: TextStyle(fontSize: 12, color: Theme
                                .of(context)
                                .accentColor),)
                        ],)

                      ],)),
                    CircleIconButton(icon: Icons.close_rounded,
                      size: 24,
                      color: Colors.black12,
                      onPressed: () {},)


                  ],
                ),

                SizedBox(height: 8,),
                Divider(height: 1, color: Colors.black26,),
                SizedBox(height: 8,),

                Row(
                  children: [
                    Expanded(child: Text('عرض المنتجات ذات الخصومات فقط',
                      style: TextStyle(fontSize: 16, color: Colors.black54),)),
                    CupertinoSwitch(
                      /*   value: isSwitched,
            onChanged: (value){
              setState(() {
                isSwitched=value;
                print(isSwitched);
              });
            },*/
                      trackColor: Colors.black12,
                      activeColor: Colors.white,
                      value: false,
                      onChanged: (bool value) {},
                    ),
                  ],

                ),
                SizedBox(height: 8,),
                Divider(height: 1, color: Colors.black26,),
                SizedBox(height: 8,),
                Text("حسب قسم معين",
                    style: TextStyle(fontSize: 16, color: Colors.black54)),
                SizedBox(height: 8,),

                SizedBox(
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.0,
                              style: BorderStyle.solid,
                              color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                          items: <String>['حلويات', 'Country', 'State'].map((
                              item) {
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


                SizedBox(height: 8,),
                Divider(height: 1, color: Colors.black26,),
                Expanded(child: Container()),
                SizedBox(
                  width: double.infinity, // match_parent

                  child: RaisedButton(

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Theme
                            .of(context)
                            .accentColor)),
                    onPressed: () {},
                    color: Theme
                        .of(context)
                        .accentColor,
                    textColor: Colors.white,
                    child: Text("تطبيق البحث".toUpperCase(),
                        style: TextStyle(fontSize: 14)),
                  ),
                ),

              ],
            ),
          );
        });
  }
}



