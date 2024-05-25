import 'package:firebase_core/firebase_core.dart';
import 'package:hackon/animations/custom_route_transistion.dart';
import 'package:hackon/error_handler.dart';
import 'package:hackon/screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackon/screens/SignIn.dart';
import 'package:hackon/screens/Signup.dart';
import 'package:hackon/screens/Welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    CustomErrorHandler().handleError(details.exception, details.stack);
  };
  await Firebase.initializeApp();
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
        initialRoute: '/',
        onGenerateRoute: generateRoute,
    );
  }
}
