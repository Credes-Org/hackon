import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackon/screens/Welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
            brightness: Brightness.dark
        ),
        routes: {},
        home: const WelcomeScreen()
    );
  }
}
