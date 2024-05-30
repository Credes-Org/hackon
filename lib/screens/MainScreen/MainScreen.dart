import 'package:flutter/material.dart';
import 'package:hackon/screens/MainScreen/Feed.dart';
import 'package:hackon/screens/MainScreen/Hackathon.dart';
import 'package:hackon/screens/MainScreen/Leaderboard.dart';
import 'package:hackon/screens/MainScreen/Statistics.dart';
import 'package:hackon/widgets/CustomNavigationBar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    LeaderboardScreen(),
    HackathonScreen(),
    StatScreen(),
    FeedScreen()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _currentIndex,
        onTabTapped: _onTabTapped,
      )
    );
  }
}
