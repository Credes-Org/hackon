import 'package:flutter/material.dart';
import 'package:hackon/constants/device_mode_constants.dart';
import 'package:hackon/constants/media_query_constants.dart';
import 'package:hackon/uikit/ui_colors.dart';

class CustomToggleButton extends StatelessWidget {
  final String imagePath;
  final bool isSelected;
  final bool leftButton;
  const CustomToggleButton({super.key, required this.imagePath, required this.isSelected, required this.leftButton});

  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQueryConstants.of(context);
    bool darkMode = DeviceMode.isDarkMode();

    return Container(
      padding: const EdgeInsets.all(6.0),
      width: mediaQuery.screenWidth * 0.12,


      decoration: BoxDecoration(
        color: isSelected ? UIColor.yellowPrimary : Colors.white12,
        borderRadius: BorderRadius.only(
            topLeft: leftButton?const Radius.circular(20.0):Radius.zero,
            topRight: leftButton?Radius.zero:const Radius.circular(20.0),
            bottomLeft: leftButton?const Radius.circular(20.0):Radius.zero,
            bottomRight: leftButton?Radius.zero:const Radius.circular(20.0)
        ),

      ),

      child: CircleAvatar(
        radius: 14,
        backgroundColor: UIColor.blackDefault,
        child: CircleAvatar(
          radius: 14,
          backgroundImage: AssetImage(imagePath),
        ),
      ),
    );
  }
}
