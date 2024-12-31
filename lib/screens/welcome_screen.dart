import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/my_customed_button.dart';
import 'package:nectar_app/core/widgets/reusable_text.dart';

import '../core/colors.dart';
import '../core/navigation_with_transition.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgroundImage.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 380.0,
                ),
                SizedBox(
                  height: 50,
                  width: 40,
                  child: Image.asset('assets/logo2.png'),
                ),
                SizedBox(height: 20.0),
                ReusableText(
                  textAlign: TextAlign.center,
                  text: "Welcome\n to our store",
                  textSize: 35,
                  textColor: Colors.white,
                  textFontWeight: FontWeight.w500,
                ),
                ReusableText(
                  textAlign: TextAlign.center,
                  text: "Ger your groceries in as fast as one hour",
                  textSize: 14,
                  textColor: Colors.white,
                  textFontWeight: FontWeight.w100,
                ),
                SizedBox(height: 35.0),
                MyCustomButton(
                  circularRadious: 15,
                  width: double.infinity,
                  height: 60,
                  function: () {
                    navigateToAnotherScreenWithSlideTransitionFromRightToLeft(
                        context, LoginScreen());
                  },
                  buttonColor: ColorsApp.primaryColor,
                  text: "Get Started",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
