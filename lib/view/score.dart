import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz/utils/color_constant/color_constant.dart';
import 'package:quiz/view/category_screen.dart';
import 'package:quiz/view/splash_screen.dart';

class Score extends StatelessWidget {
  const Score({super.key, required this.ans});
  final int ans;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.myPrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(),
            Column(
              children: [
                Text(
                  "Score",
                  style: TextStyle(
                      fontSize: 30,
                      color: ColorConstant.myWhite,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: CircularPercentIndicator(
                    radius: 80,
                    progressColor: Colors.green,
                    lineWidth: 14,
                    backgroundColor: Colors.red,
                    percent: ans / 10,
                    center: Text(
                      "${(ans * 10).toString()}%",
                      style: TextStyle(
                          fontSize: 30,
                          color: ColorConstant.myWhite,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Correct Answers : $ans",
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorConstant.myWhite,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Wrong Answers : ${10 - ans}",
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorConstant.myWhite,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryScreen(),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorConstant.myButton,
                ),
                width: 150,
                child: Center(
                  child: Text(
                    "Try Again",
                    style: TextStyle(
                      color: ColorConstant.myWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                height: 60,
              ),
            ),
            SizedBox()
          ],
        ),
      ),
    );
  }
}
