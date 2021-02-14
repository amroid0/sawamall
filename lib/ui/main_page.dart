import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sawamall/generated/l10n.dart';
import 'package:sawamall/providers/bottom_nav_provider.dart';
import 'package:sawamall/providers/locale_provider.dart';
import 'package:sawamall/ui/profile_widget.dart';

import 'cart_widget.dart';
import 'catgeory_widget.dart';
import 'home_widget.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var currentTab = [
    HomeScreen(),
    CateogryScreen(),
    ProfileScreen(),
    CartScreen()
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);

    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.currentIndex = index;
        },
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedItemColor: Theme.of(context).accentColor,

        items: [
          BottomNavigationBarItem(

            icon:  Icon(Icons.home_outlined),
            label:S.of(context).home,
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.casino_outlined),
            label:S.of(context).category,
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.account_circle_outlined),
            label:S.of(context).profile,
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.add_shopping_cart_outlined),
            label:S.of(context).cart,
          ),
        ],
      ),
      body:   currentTab[provider.currentIndex],
    );
  }
}
