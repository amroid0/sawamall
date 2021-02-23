import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sawamall/utils/ui_helper.dart';
import 'package:sawamall/widgets/circle_button.dart';
import 'package:sawamall/widgets/custom_filled_button.dart';
import 'package:sawamall/widgets/custom_tabs.dart';
import 'package:sawamall/widgets/custom_text.dart';
import 'package:sawamall/widgets/drop_down_text)field.dart';
import 'package:sawamall/widgets/expandle_page_view.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ProductDetailView extends StatefulWidget {
  @override
  _ProductDetailViewState createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  int _current = 0;
  List<String> tabs = ['نظرة عامة', 'المواصفات','التقييمات'];
  int _selectedTabIndex = 0;
  var rating=3.5;
  final _controller = new PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: CustomText(
            text: 'product name',
            color: Theme.of(context).accentColor,
          ),
        ),
        leading: Icon(
          Icons.arrow_forward_ios_outlined,
          color: Theme.of(context).accentColor,
        ),
        actions: [
          Icon(
            FontAwesomeIcons.arrowCircleDown,
            color: Theme.of(context).accentColor,
          ),
          UIHelper.horizontalSpaceSmall(),
          Icon(
            Icons.search,
            color: Theme.of(context).accentColor,
          )
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .20,
                      child: Stack(
                        children: [
                          CarouselSlider(
                            options: CarouselOptions(
                                height: MediaQuery.of(context).size.height * .20,
                                autoPlay: true,
                                viewportFraction: 1.0,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                  });
                                }),
                            items: [1, 2, 3, 4, 5].map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                                      decoration:
                                          BoxDecoration(color: Colors.grey.shade200),
                                      child: Image.network(
                                        'https://cdn.pixabay.com/photo/2017/08/31/11/55/wedding-2700495__340.jpg',
                                        fit: BoxFit.fill,
                                      ));
                                },
                              );
                            }).toList(),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: CircleIconButton(
                              color: Color(0xFFEAF7F7),
                              onPressed: () {},
                              icon: Icons.favorite_border,
                              iconColor: Colors.grey,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [1, 2, 3, 4, 5].map((url) {
                                int index = [1, 2, 3, 4, 5].indexOf(url);
                                return Container(
                                  width: 8.0,
                                  height: 8.0,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 2.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _current == index
                                        ? Color.fromRGBO(0, 0, 0, 0.9)
                                        : Color.fromRGBO(0, 0, 0, 0.4),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    UIHelper.verticalSpaceSmall(),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'ملابس حريمي',
                            fontSize: 12,
                          ),
                          UIHelper.verticalSpaceSmall(),
                          CustomText(
                            text:
                                'قميص تيبيانكي مقلم، ومن الممكن أن يكون عنوان المنتج متعدد الأسطر',
                            fontSize: 16,
                            color: Colors.black,
                            maxLine: 2,
                          ),
                          UIHelper.verticalSpaceMedium(),
                          RichText(
                            text: TextSpan(
                                text: '555',
                                style: TextStyle(
                                    color: Color(0xff137C7C),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text: 'رس',
                                      style: TextStyle(
                                          color: Color(0xff137C7C), fontSize: 14)),
                                  TextSpan(text: '  '),
                                  TextSpan(
                                    text: '239.99 ر.س',
                                    style: new TextStyle(
                                      color: Color(0xff137C7C),
                                      fontSize: 12,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  TextSpan(text: '  '),
                                  TextSpan(
                                    text: 'خصم بنسبة (28%)',
                                    style: new TextStyle(
                                      color: Color(0xff137C7C),
                                      fontSize: 12,
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                    UIHelper.verticalSpaceMedium(),
                    Container(
                      color: Color(0x2235B6B3),
                      padding: EdgeInsets.all(4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: ' عروض أخرى من ',
                                style:
                                    TextStyle(color: Color(0xff7C7C7D), fontSize: 13),
                                children: [
                                  TextSpan(
                                      text: '555',
                                      style: TextStyle(
                                          color: Color(0xff137C7C),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: 'رس',
                                      style: TextStyle(
                                          color: Color(0xff137C7C), fontSize: 14)),
                                ]),
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            onPressed: () {},
                            color: Color(0xFF35B6B3),
                            textColor: Colors.white,
                            child: Text('عرض جميع العروض',
                                style: TextStyle(fontSize: 12, color: Colors.white)),
                          ),
                        ],
                      ),
                    )
                    ,Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'تقييم العملاء',fontSize: 12,),
                          UIHelper.verticalSpaceMedium(),
                          Row(
                            children: [
                              SmoothStarRating(
                                rating: rating,
                                isReadOnly: true,
                                size: 20,
                                color: Color(0xff35B6B3),
                                borderColor: Colors.grey,
                                filledIconData: Icons.star,
                                halfFilledIconData: Icons.star_half,
                                defaultIconData: Icons.star_border,
                                starCount: 5,
                                allowHalfRating: true,
                                spacing: 1.0,
                                onRated: (value) {
                                  print("rating value -> $value");
                                  // print("rating value dd -> ${value.truncate()}");
                                },
                              ),
                              UIHelper.horizontalSpaceSmall(),
                              CustomText(text:'4.6',fontSize: 12,),
                              UIHelper.horizontalSpaceSmall(),
                              Text(
                                ' عرض التقييمات',
                                style: TextStyle(
                                  color: Color(0xff35B6B3),
                                  decoration: TextDecoration.underline,
                                ),
                              )


                            ],
                          ),

                          UIHelper.verticalSpaceMedium(),
                          SegmentedControl(
                            tabs,
                            onTabSelected: (value) {
                              setState(() {
                                _selectedTabIndex = value;
                              });
                            },
                          ),
                          ExpandablePageView(
                            itemCount: 3,
                            onPageChanged: (int page) {
                            },
                            controller: _controller,
                            itemBuilder: (context, index) {
                              return ListView.builder( shrinkWrap: true,itemCount:30,itemBuilder:(contex,index)=> Center(child: CustomText(text: 'dffdsdfssssssssss',),));
                            },
                          )

                        ],

                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
