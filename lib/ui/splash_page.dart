import 'dart:async';

import 'package:flutter/material.dart';

import '../routes.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3),()=>Navigator.pushNamed(context, RouteGenerator.home));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/images/splash.PNG',fit: BoxFit.fill,)
          ],
            ),


      ) ,

    );
  }
}
