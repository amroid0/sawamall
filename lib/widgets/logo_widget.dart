import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: MediaQuery.of(context).size.width * .6,
      height: 170,
      child: Image.asset('assets/images/logo.png'),
    );

  }
}
