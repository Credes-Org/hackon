import 'package:flutter/material.dart';
import 'package:hackon/constants/media_query_constants.dart';
import 'package:hackon/themes.dart';
import 'package:hackon/uikit/ui_colors.dart';
import 'package:hackon/widgets/CustomButton1.dart';
import 'package:hackon/widgets/CustomTextField.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQueryConstants.of(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: mediaQuery.screenHeight * 0.15,
          ),
          Center(
            child: Image.asset('assets/images/hackon-logo.png',
                width: MediaQuery.of(context).size.width * 0.4),
          ),
          SizedBox(
            height: mediaQuery.screenHeight * 0.1,
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.screenWidth * 0.08),
              child: CustomTextField(hintText: "Email ID")),
          SizedBox(
            height: mediaQuery.screenHeight * 0.02,
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.screenWidth * 0.08),
              child: CustomTextField(hintText: "Password")),
          SizedBox(
            height: mediaQuery.screenHeight * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Divider(
                color: Colors.grey,
                thickness: 1.0,
                height: 1.0,
                indent: mediaQuery.screenWidth * 0.09,
                endIndent: 16.0,
              )),
              Text(
                "or",
                style: AppThemes.bodyMedium(color: Colors.grey),
              ),
              Expanded(
                  child: Divider(
                color: Colors.grey,
                thickness: 1.0,
                height: 1.0,
                indent: 16,
                endIndent: mediaQuery.screenWidth * 0.09,
              ))
            ],
          ),
          SizedBox(
            height: mediaQuery.screenHeight * 0.05,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: mediaQuery.screenWidth * 0.08),
              child: CustomButton1(
                color: UIColor.blackDefault,
                textColor: UIColor.whiteDefault,
                borderWidth: 1.0,
                borderColor: UIColor.whiteDefault,
                text: 'Continue with Apple',
                onPressed: () {},
                  logo: "assets/images/apple.png"
              )
          ),
          SizedBox(
            height: mediaQuery.screenHeight * 0.02,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: mediaQuery.screenWidth * 0.08),
              child: CustomButton1(
                color: UIColor.whiteDefault,
                textColor: UIColor.blackDefault,
                borderWidth: 1.0,
                borderColor: UIColor.blackDefault,
                text: 'Continue with Google',
                onPressed: () {},
                logo: "assets/images/google.png"
              ))
        ],
      ),
    );
  }
}
