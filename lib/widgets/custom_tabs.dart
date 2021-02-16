import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sawamall/utils/extentios.dart';

class SegmentedControl extends StatefulWidget {
  final Function onTabSelected;
  final List<String> titles;

  SegmentedControl(this.titles,{this.onTabSelected});

  @override
  _SegmentedControlState createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  int segmentedControlValue = 0;

  Widget segmentedControl() {
    return Container(
      width: 300,
      child: CupertinoSlidingSegmentedControl(
          groupValue: segmentedControlValue,
          backgroundColor: Colors.grey.shade200,
          children: widget.titles
              .mapIndexed(
                (element, index) => Text(
                  element,
                  style: TextStyle(
                      color: segmentedControlValue != index
                          ? Colors.black
                          : Theme.of(context).accentColor),
                ),
              )
              .toList()
              .asMap(),
          onValueChanged: (value) {
            widget.onTabSelected(value);
            setState(() {
              segmentedControlValue = value;
            });
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return segmentedControl();
  }
}
