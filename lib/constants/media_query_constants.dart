import 'package:flutter/material.dart';

class MediaQueryConstants {
  final double screenWidth;
  final double screenHeight;
  final double devicePixelRatio;
  final double textScaleFactor;
  final EdgeInsets viewPadding;
  final EdgeInsets viewInsets;
  final EdgeInsets systemGestureInsets;
  final Orientation orientation;

  MediaQueryConstants({
    required this.screenWidth,
    required this.screenHeight,
    required this.devicePixelRatio,
    required this.textScaleFactor,
    required this.viewPadding,
    required this.viewInsets,
    required this.systemGestureInsets,
    required this.orientation,
  });

  factory MediaQueryConstants.of(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return MediaQueryConstants(
      screenWidth: mediaQuery.size.width,
      screenHeight: mediaQuery.size.height,
      devicePixelRatio: mediaQuery.devicePixelRatio,
      textScaleFactor: mediaQuery.textScaleFactor,
      viewPadding: mediaQuery.viewPadding,
      viewInsets: mediaQuery.viewInsets,
      systemGestureInsets: mediaQuery.systemGestureInsets,
      orientation: mediaQuery.orientation,
    );
  }
}