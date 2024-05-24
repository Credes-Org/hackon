import 'package:flutter/material.dart';
import 'package:hackon/constants/device_mode_constants.dart';
import 'package:hackon/widgets/CustomButton1.dart';
import 'package:hackon/widgets/CustomButton2.dart';
import 'package:hackon/widgets/CustomTextField.dart';

import '../constants/media_query_constants.dart';
import '../themes.dart';
import '../uikit/ui_colors.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
              height: mediaQuery.screenHeight * 0.05,
            ),
            Center(
              child: Image.asset('assets/images/hackon-logo.png',
                  width: MediaQuery.of(context).size.width * 0.3),
            ),
            SizedBox(
              height: mediaQuery.screenHeight * 0.04,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: mediaQuery.screenWidth * 0.08),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Create Account",
                        style: AppThemes.displayLarge(
                            color: darkMode?UIColor.whiteDefault:UIColor.blackDefault)))),

            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: mediaQuery.screenWidth * 0.08),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Begin your Hackon Journey",
                        style: AppThemes.bodyMedium(
                            color: darkMode?UIColor.greenNeutral:UIColor.greenPrimary)))
            ),
            SizedBox(
              height: mediaQuery.screenHeight * 0.03,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: mediaQuery.screenWidth * 0.08),
                child: CustomTextField(hintText: "Email ID")),
            SizedBox(
              height: mediaQuery.screenHeight * 0.02,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaQuery.screenWidth * 0.08),
                child: CustomTextField(hintText: "Password",obscureText: true,)
            ),
            SizedBox(
              height: mediaQuery.screenHeight * 0.02,
            ),
            CustomButton1(
                color: darkMode?UIColor.blackDefault:UIColor.greenPrimary,
                textColor: darkMode?UIColor.greenSecondary:UIColor.whiteDefault,
                width: mediaQuery.screenWidth * 0.85,
                height: mediaQuery.screenHeight * 0.08,
                borderWidth: 2.0,
                borderColor: darkMode?UIColor.greenSecondary:UIColor.greenPrimary,
                text: 'Sign Up',
                onPressed: () {},
            ),
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
              height: mediaQuery.screenHeight * 0.04,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: mediaQuery.screenWidth * 0.08),
                child: Align(
                    alignment: Alignment.center,
                    child: Text("Continue with", style: AppThemes.bodyMedium(color: darkMode?UIColor.greenNeutral:UIColor.greenPrimary)))
            ),
            SizedBox(
              height: mediaQuery.screenHeight * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton2(
                  color: UIColor.blackDefault,
                  iconSize: mediaQuery.screenWidth * 0.16,
                  assetPath: 'assets/images/apple.png',
                  borderWidth: 1.0,
                  borderColor: darkMode?UIColor.whiteDefault:UIColor.blackDefault,
                  onPressed: () {
                    print('Custom Icon Button Pressed');
                  },
                ),
                SizedBox(
                  width: mediaQuery.screenWidth * 0.05,
                ),
                CustomButton2(
                  color: UIColor.whiteDefault,
                  iconSize: mediaQuery.screenWidth * 0.16,
                  assetPath: 'assets/images/google.png',
                  borderWidth: 1.0,
                  borderColor: darkMode?UIColor.whiteDefault:UIColor.blackDefault,
                  onPressed: () {
                    print('Custom Icon Button Pressed');
                  },
                ),

              ],
            )


          ],
        ),
      ),
    );
  }
}
