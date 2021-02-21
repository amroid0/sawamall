import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sawamall/utils/ui_helper.dart';
import 'package:sawamall/widgets/custom_appbar.dart';
import 'package:sawamall/widgets/custom_filled_button.dart';
import 'package:sawamall/widgets/custom_text.dart';

class CateogryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;


    return Scaffold(
      appBar: CustomAppBar(''),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (context, constraints) => _buildMainCategoryList(),
            ),
          ),
          Expanded(
            flex: 7,
            child: LayoutBuilder(
              builder: (context, constraints) => Container(
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2017/08/31/11/55/wedding-2700495__340.jpg'),
                                fit: BoxFit.cover)),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  colors: [
                                    Colors.black.withOpacity(.4),
                                    Colors.black.withOpacity(.2),
                                  ])),

                        child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              UIHelper.verticalSpaceMedium(),
                              CustomText(text: 'ازياء وموضه',color: Colors.white,fontSize: 20,),
                              UIHelper.verticalSpaceMedium(),
                              Container(
                                  width: 100,
                                  height: 40,
                                  child
                                  : CustomButton(textColor: Colors.white,text: 'تسوق ',filledColor: Color(0xff35B6B3),))
                            ],

                          )

                          ,),
                      ),
                      UIHelper.verticalSpaceMedium(),
                      Container(
                          alignment: Alignment.centerRight,
                          child: CustomText(
                            text: 'الاقسام الفرعيه',
                          )),
                      UIHelper.verticalSpaceMedium(),
                      _buildSubCateogryGrid()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildMainCategoryList() {
    return Container(
        color: Color(0x5035B6B3),
        child: ListView.builder(
            itemCount: 19,
            itemBuilder: (context, index) {
              if(index==2){
                return Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/iq.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      CustomText(
                        text: 'الكتروميات',
                      ),
                    ],
                  ),
                );
              }
              return Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/iq.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    CustomText(
                      text: 'الكتروميات',
                    ),
                  ],
                ),
              );
            }));
  }

  _buildSubCateogryGrid() {
    return  Expanded(
      child: GridView.builder(
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    // What do i do here?
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * .3,
                    height: MediaQuery.of(context).size.height * .3,

                    child: buildImageInteractionCard()
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );



  }


  Widget buildImageInteractionCard() => Card(
    color: Color(0xffF3F0F8),
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Stack(
      children: [
        Ink.image(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80',
          ),
          height: 80,
          fit: BoxFit.cover,
        ),
         Align(alignment:Alignment.bottomCenter,child: CustomText(text:'tilte'))

      ],
    ),
  );

}
