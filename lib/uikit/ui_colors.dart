import 'package:flutter/painting.dart';
import 'package:hackon/constants/device_mode_constants.dart';

class UIColor {

  late bool darkMode;

  UIColor._(){
    darkMode = DeviceMode.isDarkMode();
  }

  static final UIColor _instance = UIColor._();

  factory UIColor() {
    return _instance;
  }



  static const Color blackDefault = Color(0xFF0b0b0b);
  static const Color greenPrimary = Color(0xFF007F5F);
  static const Color greenSecondary = Color(0xFF55A630);
  static const Color greenNeutral = Color(0xFFAACC00);
  static const Color yellowPrimary = Color(0xFFDDDF00);
  static const Color yellowSecondary = Color(0xFFEEEF20);
  static const Color whiteDefault = Color(0xFFFDFDFD);

  Color blackWhite() {
    return darkMode ? whiteDefault : blackDefault;
  }

  Color whiteBlack() {
    return !darkMode ? whiteDefault : blackDefault;
  }

}
