import 'package:bmi_calculator/screen/home.dart';
import 'package:flutter/material.dart';

class rightBar extends StatelessWidget {
  double barwidth;
  rightBar({required this.barwidth});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: height / 40,
          width: barwidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
            color: accentcolor,
          ),
        )
      ],
    );
  }
}
