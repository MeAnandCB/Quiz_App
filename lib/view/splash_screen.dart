import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/utils/color_constant/color_constant.dart';
import 'package:quiz/view/homepage.dart';
import 'package:rive/rive.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 22, 5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          SizedBox(
            height: MediaQuery.of(context).size.width * .80,
            width: MediaQuery.of(context).size.height * .80,
            child: Center(
              child: RiveAnimation.asset(
                  "assets/animations/rive/5965-11570-viking-strike.riv"),
            ),
          ),
          SizedBox(),
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ));
        },
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: ColorConstant.myPrimary,
            ),
            child: Center(
              child: Text(
                "Let's Start",
                style: TextStyle(
                    color: ColorConstant.myWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            height: 60,
          ),
        ),
      ),
    );
  }
}
