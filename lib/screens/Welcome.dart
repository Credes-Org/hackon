import 'package:flutter/material.dart';
import 'package:hackon/constants/device_mode_constants.dart';
import 'package:hackon/themes.dart';
import 'package:hackon/uikit/ui_colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool darkMode = DeviceMode.isDarkMode();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/hackon-logo.png',
              width: MediaQuery.of(context).size.width * 0.4),
          Center(
            child: Text("HackOn",
                style: AppThemes.displayLarge(
                    color: darkMode? Colors.white: Colors.black, fontSize: 40.0, fontFamily: 'Riley', letterSpacing: 3.0 )),
          ),
          Center(
            child: Text("Code. Complete. Conquer.",
                style: AppThemes.bodyMedium(color: darkMode? UIColor.yellowPrimary : UIColor.greenSecondary, letterSpacing: 1.0)),
          )
        ],
      ),
    );
  }
}


