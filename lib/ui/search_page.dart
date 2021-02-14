import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sawamall/generated/l10n.dart';
import 'package:sawamall/widgets/circle_button.dart';

class SearchScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:   SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(child: Icon(Icons.close,color: Colors.grey,)),
                      SizedBox(width: 8,),
                      Expanded(
                        child: Container(
                          height: 50,
                          child: TextFormField(
                            autofocus: true,
                            onChanged: (value) {

                            },
                            maxLines: 1,
                            showCursor: false,
                            keyboardType: TextInputType.text,
                            style: TextStyle(
                                color: Colors.black38,
                              fontSize: 14
                            ),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(10,0,10,-20),
                                hintText:S.of(context).search,
                                labelStyle:TextStyle(fontSize: 12,color: Colors.black38) ,
                                hintStyle: TextStyle(fontSize: 12,color: Colors.grey),

                                suffixIcon: CircleIconButton(icon: Icons.search,),
                                filled: true,
                                focusedBorder:OutlineInputBorder(
                                  borderSide:  BorderSide(color: Theme.of(context).accentColor, width: 1.0),
                                  borderRadius: BorderRadius.circular(25.0),

                                ),
),
                          ),
                        ),
                      ),
                    ]
                ),
                SizedBox(height: 8,),
                Stack(
                  children: [
                    Align(alignment:AlignmentDirectional.topStart,child: Text(S.of(context).suggestion,style: TextStyle(fontSize: 14,color: Colors.black45),)),
                    Align(alignment:AlignmentDirectional.topEnd,child: Text(S.of(context).delete,style: TextStyle(fontSize: 14,color: Colors.red),))
                  ],
                ),
                SizedBox(height: 8,),
            Expanded(
              child: ListView.separated(
                itemCount: 25,
                separatorBuilder: (BuildContext context, int index) => Divider(height: 1),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('بحث $index',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black54),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.black54,size: 14,),
                    contentPadding: EdgeInsets.zero,
                  );
                },
              )
            )


              ]
          ),
        ),
      ),



    );
  }
}