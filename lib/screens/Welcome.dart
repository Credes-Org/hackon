import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hackon/animations/custom_route_transistion.dart';
import 'package:hackon/constants/device_mode_constants.dart';
import 'package:hackon/constants/media_query_constants.dart';
import 'package:hackon/screens/SignIn.dart';
import 'package:hackon/themes.dart';
import 'package:hackon/uikit/ui_colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  _navigateToLogin() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Navigator.pushReplacementNamed(context,'/login');
  }

  @override
  Widget build(BuildContext context) {
    bool darkMode = DeviceMode.isDarkMode();
    final mediaQuery = MediaQueryConstants.of(context);

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
          ),
          SizedBox(
            height: mediaQuery.screenHeight*0.1,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SpinKitDualRing(
              color: Colors.white,
              size: mediaQuery.screenWidth*0.15,
            ),
          )


        ],
      ),
    );
  }
}


Route _createRoute() {
  return PageRouteBuilder(
    transitionDuration: Duration(seconds: 3),
    pageBuilder: (context, animation, secondaryAnimation) => const SignInScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
          position: animation.drive(tween),
          child: child,
      );
    },
  );
}



