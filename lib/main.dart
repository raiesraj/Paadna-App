import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mypanda/Screens/sigin_screen_one.dart';
import 'package:mypanda/Screens/splash_screen.dart';
import 'package:mypanda/Screens/splash_screen_one.dart';
import 'package:mypanda/Utilis/images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset(AppImages().logoImage), nextScreen: SplashScreenTwo(),
      backgroundColor: Colors.black,
        splashIconSize: 200,
        splashTransition: SplashTransition.slideTransition,

      ),
    );
  }
}

