import 'package:bmi_calculator/screen/home.dart';
import 'package:flutter/material.dart';

class leftBar extends StatelessWidget {
  double barwidth;
  leftBar({required this.barwidth});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: height / 40,
          width: barwidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: accentcolor,
          ),
        )
      ],
    );
  }
}
