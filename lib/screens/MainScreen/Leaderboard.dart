import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackon/constants/device_mode_constants.dart';
import 'package:hackon/constants/media_query_constants.dart';
import 'package:hackon/models/Platform.dart';
import 'package:hackon/models/RankProfile.dart';
import 'package:hackon/themes.dart';
import 'package:hackon/uikit/ui_colors.dart';
import 'package:hackon/widgets/CustomPlatformIcon.dart';
import 'package:hackon/widgets/CustomRankProfileCard.dart';
import 'package:hackon/widgets/CustomToggleButton.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  int _selectedPlatformIndex = 0;
  bool _toggleIndex = true;

  final List<Platform> _platforms = [
    Platform(
        name: "Codeforces",
        imagePath: 'assets/images/codeforces.png',
        key: 'cf'),
    Platform(
        name: "Leetcode", imagePath: 'assets/images/leetcode.png', key: 'lc'),
    Platform(name: "Github", imagePath: 'assets/images/github.png', key: 'gh')
  ];

  final List<RankProfile> _profiles = [
    RankProfile(
        key: 'a',
        name: 'CodeCrafter',
        imagePath: 'assets/images/rankprofile.png',
        score: '8000'),
    RankProfile(
        key: 'b',
        name: 'ByteWizard',
        imagePath: 'assets/images/rankprofile.png',
        score: '10181'),
    RankProfile(
        key: 'c',
        name: 'CodeGuru',
        imagePath: 'assets/images/rankprofile.png',
        score: '8885'),
    RankProfile(
        key: 'd',
        name: 'TechSavvy',
        imagePath: 'assets/images/rankprofile.png',
        score: '9826'),
    RankProfile(
        key: 'e',
        name: 'AlgoMaster',
        imagePath: 'assets/images/rankprofile.png',
        score: '10831'),
    RankProfile(
        key: 'f',
        name: 'ScriptNinja',
        imagePath: 'assets/images/rankprofile.png',
        score: '11963'),
    RankProfile(
        key: 'g',
        name: 'DevSorcerer',
        imagePath: 'assets/images/rankprofile.png',
        score: '9653'),
    RankProfile(
        key: 'h',
        name: 'PixelPioneer',
        imagePath: 'assets/images/rankprofile.png',
        score: '11382'),
    RankProfile(
        key: 'i',
        name: 'CyberSmith',
        imagePath: 'assets/images/rankprofile.png',
        score: '6290'),
    RankProfile(
        key: 'j',
        name: 'AppArchitect',
        imagePath: 'assets/images/rankprofile.png',
        score: '12525'),
    RankProfile(
        key: 'k',
        name: 'DataDruid',
        imagePath: 'assets/images/rankprofile.png',
        score: '12011'),
  ];

  void _onProfileIconTap(int index) {
    setState(() {
      _selectedPlatformIndex = index;
      _toggleIndex = true;
    });
  }

  void _onToggleIconTap(bool value) {
    setState(() {
      _toggleIndex = !_toggleIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQueryConstants.of(context);
    bool darkMode = DeviceMode.isDarkMode();

    return Scaffold(
        appBar: AppBar(
          title: Text("Leaderboard",
              style: AppThemes.headlineMedium(
                  color:
                      darkMode ? UIColor.whiteDefault : UIColor.blackDefault)),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: mediaQuery.screenHeight * 0.01,
            ),
            Stack(children: [
              Center(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: mediaQuery.screenHeight * 0.015),
                  child: Container(
                      width: mediaQuery.screenWidth * 0.7,
                      height: mediaQuery.screenHeight * 0.07,
                      decoration: BoxDecoration(
                          color: darkMode ? Colors.white12 : Colors.black12,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30.0)))),
                ),
              ),
              Center(
                child: SizedBox(
                  height: mediaQuery.screenHeight * 0.1,
                  width: mediaQuery.screenWidth * 0.6,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(_platforms.length, (index) {
                        return GestureDetector(
                          onTap: () => _onProfileIconTap(index),
                          child: CustomPlatformIcon(
                            imagePath: _platforms[index].imagePath,
                            isSelected: _selectedPlatformIndex == index,
                          ),
                        );
                      })),
                ),
              ),
            ]),
            SizedBox(
              height: mediaQuery.screenHeight * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.screenWidth * 0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Weekly Top Achievers",
                              style: AppThemes.headlineSmall(
                                  color: darkMode
                                      ? UIColor.whiteDefault
                                      : UIColor.blackDefault))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(_platforms[_selectedPlatformIndex].name,
                              style: AppThemes.bodyMedium(
                                  color: darkMode
                                      ? UIColor.greenNeutral
                                      : UIColor.greenPrimary))),
                    ],
                  ),
                  SizedBox(
                    height: mediaQuery.screenHeight * 0.1,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            _onToggleIconTap(!_toggleIndex);
                          },
                          child: CustomToggleButton(
                              imagePath: 'assets/images/global.png',
                              isSelected: _toggleIndex,
                              leftButton: true)),
                      const SizedBox(
                        width: 1.0,
                      ),
                      GestureDetector(
                          onTap: () {
                            _onToggleIconTap(!_toggleIndex);
                          },
                          child: CustomToggleButton(
                              imagePath: 'assets/images/fab.png',
                              isSelected: !_toggleIndex,
                              leftButton: false)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mediaQuery.screenHeight * 0.01,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: mediaQuery.screenWidth * 0.05),
                child: Container(
                  decoration: const BoxDecoration(
                      color: UIColor.blackDefault,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20.0)),
                      border: Border(
                        top: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        bottom: BorderSide.none,
                      )),
                  child: Stack(children: [
                    Positioned(
                        child: Container(
                      height: mediaQuery.screenHeight * 0.3,
                      width: mediaQuery.screenWidth * 1,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [UIColor.blackDefault, UIColor.greenPrimary],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20.0)),
                      ),
                    )),
                    ListView.builder(
                        itemCount: _profiles.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () =>
                                _showFullModal(context, _profiles[index]),
                            child: CustomRankProfileCard(
                                name: _profiles[index].name,
                                score: _profiles[index].score,
                                imagePath: _profiles[index].imagePath,
                                position: index + 1),
                          );
                          // return
                        }),
                  ]),
                ),
              ),
            )
          ],
        ));
  }

  _showFullModal(context, profile) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      // should dialog be dismissed when tapped outside
      barrierLabel: profile.name,
      // label for barrier
      transitionDuration: const Duration(milliseconds: 500),
      // how long it takes to popup dialog after button click
      pageBuilder: (_, __, ___) {
        // your widget implementation
        return Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              leading: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              title: Text(
                "ScoreBoard",
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Overpass',
                    fontSize: 20),
              ),
              elevation: 0.0),
          backgroundColor: Colors.white.withOpacity(0.95),
          body: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 48,
                      backgroundImage: AssetImage(profile.imagePath),
                    ),
                  ),
                ),
                const SizedBox(height: 50,),
                Text(
                  "Name: ${profile.name}",
                  style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Overpass',
                      fontSize: 20),
                ),
                Text(
                  "Score: ${profile.score}",
                  style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Overpass',
                      fontSize: 20),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
