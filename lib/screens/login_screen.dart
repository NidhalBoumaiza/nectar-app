import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/reusable_text.dart';
import 'package:nectar_app/core/widgets/reusable_text_field_widget.dart';

import '../core/colors.dart';
import '../core/navigation_with_transition.dart';
import '../core/widgets/my_customed_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Center(
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    'assets/logo3.png', // Your carrot icon path
                    height: 100,
                  ),
                ),
              ),
              SizedBox(height: 100),
              ReusableText(
                text: "Loging",
                textSize: 18,
                textColor: Colors.black,
                textFontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5),
              ReusableText(
                text: "Enter your emails and password",
                textSize: 12,
                textColor: Color(0xff7C7C7C),
                textFontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              ReusableText(
                text: "Email",
                textSize: 11,
                textColor: Color(0xff7C7C7C),
                textFontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
              ReusableTextFieldWidget(
                controller: emailController,
                hintText: "example@email.com",
                borderSide: BorderSide(
                  color: Color(0xffE2E2E2),
                ),
              ),
              SizedBox(height: 20),
              ReusableText(
                text: "Password",
                textSize: 11,
                textColor: Color(0xff7C7C7C),
                textFontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
              ReusableTextFieldWidget(
                controller: passwordController,
                hintText: "**************",
                borderSide: BorderSide(
                  color: Color(0xffE2E2E2),
                ),
                obsecureText: obsecureText,
                onPressedSuffixIcon: () {
                  setState(() {
                    obsecureText = !obsecureText;
                  });
                },
              ),
              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: ReusableText(
                      text: "Forgot Password?",
                      textSize: 12,
                      textColor: Color(0xff181725),
                      textFontWeight: FontWeight.w500,
                      textAlign: TextAlign.center,
                    )),
              ),
              SizedBox(height: 20),
              // Login Button
              MyCustomButton(
                circularRadious: 15,
                width: double.infinity,
                height: 60,
                function: () {
                  navigateToAnotherScreenWithSlideTransitionFromRightToLeft(
                      context, LoginScreen());
                },
                buttonColor: ColorsApp.primaryColor,
                text: "Log In",
              ),
              SizedBox(height: 20),
              // Sign Up Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReusableText(
                    text: "Don’t have an account?",
                    textSize: 11,
                    textColor: Color(0xff181725),
                    textFontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle Sign Up
                    },
                    child: ReusableText(
                      text: " Signup",
                      textSize: 11,
                      textColor: ColorsApp.primaryColor,
                      textFontWeight: FontWeight.w600,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
