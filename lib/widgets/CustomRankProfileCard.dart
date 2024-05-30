import 'package:flutter/material.dart';
import 'package:hackon/constants/device_mode_constants.dart';
import 'package:hackon/constants/media_query_constants.dart';
import 'package:hackon/themes.dart';
import 'package:hackon/uikit/ui_colors.dart';

class CustomRankProfileCard extends StatelessWidget {
  final String name;
  final int position;
  final String score;
  final String imagePath;

  const CustomRankProfileCard(
      {super.key,
      required this.name,
      required this.score,
      required this.imagePath,
      required this.position});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQueryConstants.of(context);
    bool darkMode = DeviceMode.isDarkMode();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            width: mediaQuery.screenWidth * 0.1,
            decoration: BoxDecoration(
              color: Colors.grey[850],
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text('${position}',
                  style: AppThemes.labelSmall(color: UIColor.whiteDefault)),
            ),
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage(imagePath),
            ),
          ),
          Text(
            name,
            style: AppThemes.bodyMedium(
                color: darkMode ? UIColor.whiteDefault : UIColor.blackDefault),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            width: mediaQuery.screenWidth * 0.25,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(color: Colors.yellow),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.whatshot,
                  color: UIColor.yellowSecondary,
                  size: 18,
                ),
                const SizedBox(width: 5),
                Text(score,
                    style: AppThemes.titleSmall(color: UIColor.yellowSecondary))
              ],
            ),
          )
        ],
      ),
    );
  }
}
