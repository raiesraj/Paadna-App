import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mypanda/Screens/sceond_screen.dart';
import 'package:mypanda/Utilis/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

late Timer _timer;

@override
  void initState() {
    _timer = Timer(const Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
    });
    super.initState();
  }
     @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(AppImages().splashImage),
          )
        ],
      ),

    );
  }
}
