import 'package:flutter/material.dart';
import 'package:hackon/constants/device_mode_constants.dart';
import 'package:hackon/uikit/ui_colors.dart';

class CustomPlatformIcon extends StatelessWidget {
  final String imagePath;
  final bool isSelected;
  const CustomPlatformIcon({super.key, required this.imagePath, required this.isSelected});

  @override
  Widget build(BuildContext context) {

    bool darkMode = DeviceMode.isDarkMode();

    return CircleAvatar(
      radius: isSelected? 34: 30,
      backgroundColor: isSelected? UIColor.greenSecondary: UIColor.blackDefault,
      child: CircleAvatar(
        radius: 28,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage(imagePath),
        ),
      ),
    );
  }
}
