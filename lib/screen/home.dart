import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets/leftbar.dart';
import 'package:bmi_calculator/widgets/rightbar.dart';

import 'package:hexcolor/hexcolor.dart';

final mainhexcolor = HexColor("#1c1c1c");
final accentcolor = HexColor("#FCC91C");
double result = 0;
String textresult = "";

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController heightcontroller = TextEditingController();
  TextEditingController weightcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final font = MediaQuery.textScaleFactorOf(context);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainhexcolor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height / 20),
              //bmi
              Text(
                'BMI CALCULATOR',
                style: TextStyle(color: accentcolor, fontSize: font * 25),
              ),
              SizedBox(height: height / 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //height
                  Container(
                    width: width / 3,
                    child: TextField(
                      controller: heightcontroller,
                      style: TextStyle(
                        color: accentcolor,
                        fontSize: font * 40,
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "height",
                          hintStyle: TextStyle(color: Colors.white)),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  //width
                  Container(
                    width: width / 3,
                    child: TextField(
                      controller: weightcontroller,
                      style: TextStyle(
                        color: accentcolor,
                        fontSize: font * 40,
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "weight",
                          hintStyle: TextStyle(color: Colors.white)),
                      keyboardType: TextInputType.number,
                    ),
                  )
                ],
              ),
              SizedBox(height: height / 30),
              GestureDetector(
                onTap: () {
                  double h = double.parse(heightcontroller.text);
                  double w = double.parse(weightcontroller.text);

                  setState(() {
                    result = w / (h * h);
                    if (result > 25) {
                      textresult = "You are overweight";
                    } else if (result >= 18.5 && result <= 25) {
                      textresult = "You have normal weight";
                    } else {
                      textresult = "You are under weight";
                    }
                  });
                },
                child: Text(
                  'Calculate',
                  style: TextStyle(color: accentcolor, fontSize: font * 20),
                ),
              ),
              SizedBox(height: height / 30),
              Text(
                result.toStringAsFixed(2),
                style: TextStyle(color: accentcolor, fontSize: font * 50),
              ),
              SizedBox(height: height / 30),
              Text(
                textresult,
                style: TextStyle(color: accentcolor, fontSize: font * 30),
              ),

              SizedBox(height: height / 10),
              rightBar(
                barwidth: width / 10,
              ),

              SizedBox(height: height / 30),
              rightBar(
                barwidth: width / 5,
              ),
              SizedBox(height: height / 30),
              rightBar(barwidth: width / 10),
              SizedBox(height: height / 30),
              leftBar(barwidth: width / 10),
              SizedBox(height: height / 20),
              leftBar(barwidth: width / 10),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
