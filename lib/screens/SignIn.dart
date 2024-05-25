import 'package:flutter/material.dart';
import 'package:hackon/constants/device_mode_constants.dart';
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
    bool darkMode = DeviceMode.isDarkMode();

    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(
              height: mediaQuery.screenHeight * 0.02,
            ),

            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: mediaQuery.screenWidth * 0.08),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("> REGISTER",
                        style: AppThemes.bodyMedium(
                            color: darkMode?UIColor.greenNeutral:UIColor.greenPrimary)))
            ),

            SizedBox(
              height: mediaQuery.screenHeight * 0.02,
            ),
            Center(
              child: Image.asset('assets/images/hackon-logo.png',
                  width: MediaQuery.of(context).size.width * 0.3),
            ),
            SizedBox(
              height: mediaQuery.screenHeight * 0.02,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: mediaQuery.screenWidth * 0.08),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Welcome Back",
                        style: AppThemes.displayLarge(
                            color: darkMode?UIColor.whiteDefault:UIColor.blackDefault)))
            ),

            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: mediaQuery.screenWidth * 0.08),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Login to Continue",
                        style: AppThemes.bodyMedium(
                            color: darkMode?UIColor.greenNeutral:UIColor.greenPrimary)))
            ),
            SizedBox(
              height: mediaQuery.screenHeight * 0.02,
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
                child: CustomTextField(hintText: "Password",obscureText: true,)
            ),
            SizedBox(
              height: mediaQuery.screenHeight * 0.01,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: mediaQuery.screenWidth * 0.08),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forget Password ?",
                        style: AppThemes.bodySmall(
                            color: darkMode?UIColor.greenNeutral:UIColor.greenPrimary)))
            ),
            SizedBox(
              height: mediaQuery.screenHeight * 0.02,
            ),
            CustomButton1(
              color: darkMode?UIColor.greenSecondary:UIColor.greenPrimary,
              textColor: darkMode?UIColor.blackDefault:UIColor.whiteDefault,
              width: mediaQuery.screenWidth * 0.85,
              height: mediaQuery.screenHeight * 0.08,
              borderWidth: 1.0,
              borderColor: darkMode?UIColor.greenSecondary:UIColor.greenPrimary,
              text: 'Sign In',
              onPressed: () {},
            ),
            SizedBox(
              height: mediaQuery.screenHeight * 0.03,
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
              height: mediaQuery.screenHeight * 0.03,
            ),
            CustomButton1(
                color: UIColor.blackDefault,
                textColor: UIColor.whiteDefault,
                width: mediaQuery.screenWidth * 0.85,
                height: mediaQuery.screenHeight * 0.08,
                borderWidth: 1.0,
                borderColor: UIColor.whiteDefault,
                text: 'Continue with Apple',
                onPressed: () {},
                logo: "assets/images/apple.png"),
            SizedBox(
              height: mediaQuery.screenHeight * 0.02,
            ),
            CustomButton1(
                color: UIColor.whiteDefault,
                textColor: UIColor.blackDefault,
                width: mediaQuery.screenWidth * 0.85,
                height: mediaQuery.screenHeight * 0.08,
                borderWidth: 1.0,
                borderColor: UIColor.blackDefault,
                text: 'Continue with Google',
                onPressed: () {},
                logo: "assets/images/google.png")
          ],
        ),
      ),
    );
  }
}
