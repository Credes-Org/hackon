import 'package:flutter/material.dart';
import 'package:hackon/themes.dart';
import 'package:hackon/uikit/ui_colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/hackon-logo.png',
              width: MediaQuery.of(context).size.width * 0.4),
          Center(
            child: Text("HackOn",
                style: AppThemes.displayLarge(
                    color: Colors.white, fontSize: 40.0, fontFamily: 'Riley', letterSpacing: 3.0 )),
          ),
          Center(
            child: Text("Code. Complete. Conquer.",
                style: AppThemes.bodyMedium(color: UIColor.yellowPrimary, letterSpacing: 1.0)),
          )
        ],
      ),
    );
  }
}
