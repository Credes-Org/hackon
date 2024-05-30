import 'package:flutter/material.dart';
import 'package:hackon/themes.dart';
import 'package:hackon/uikit/ui_colors.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;
  const CustomNavigationBar({super.key,required this.currentIndex, required this.onTabTapped});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: UIColor.blackDefault,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildNavItem(Icons.star, 'Ranking', 0),
          _buildNavItem(Icons.rocket_rounded, 'Events', 1),
          _buildNavItem(Icons.analytics_outlined, 'Stats', 2),
          _buildNavItem(Icons.update, 'Feeds', 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    bool isSelected = currentIndex == index;
    return GestureDetector(
      onTap: () => onTabTapped(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon,size: 25, color: isSelected ? UIColor.greenPrimary : UIColor.whiteDefault),
          Text(label, style: AppThemes.labelSmall(color: isSelected ? UIColor.greenPrimary : UIColor.whiteDefault)),
        ],
      ),
    );
  }
}
