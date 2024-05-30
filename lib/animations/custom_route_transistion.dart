import 'package:bart/bart.dart';
import 'package:flutter/material.dart';
import 'package:hackon/screens/Home.dart';
import 'package:hackon/screens/MainScreen/MainScreen.dart';
import 'package:hackon/screens/SignIn.dart';
import 'package:hackon/screens/Signup.dart';
import 'package:hackon/screens/Welcome.dart';


class CustomPageRoute extends PageRouteBuilder {
  final Widget page;
  final Offset startOffset;
  final Duration duration;

  CustomPageRoute({
    required this.page,
    required this.startOffset,
    required this.duration})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionDuration: duration,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = startOffset;
            var end = Offset.zero;
            var curve = Curves.ease;

            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
      );
}



Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return CustomPageRoute(
        page: const WelcomeScreen(),
        startOffset: const Offset(0.0, 1.0), // Slide up from the bottom
        duration: const Duration(seconds: 1),
      );
    case '/login':
      return CustomPageRoute(
        page: const SignInScreen(),
        startOffset: const Offset(1.0, 0.0), // Slide in from the right
        duration: const Duration(seconds: 1),
      );
    case '/register':
      return CustomPageRoute(
        page: SignUpScreen(),
        startOffset: Offset(1.0, 0.0), // Slide in from the left
        duration: Duration(seconds: 1),
      );
    case '/main':
      return CustomPageRoute(
        page: MainScreen(),
        startOffset: Offset(0.0, 1.0), // Slide down from the top
        duration: Duration(seconds: 1),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        ),
      );
  }
}



