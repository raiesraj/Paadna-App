import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mypanda/Screens/sceond_screen.dart';
import 'package:mypanda/Utilis/images.dart';

class SplashScreenTwo extends StatefulWidget {
  const SplashScreenTwo({Key? key}) : super(key: key);

  @override
  State<SplashScreenTwo> createState() => _SplashScreenTwoState();
}

class _SplashScreenTwoState extends State<SplashScreenTwo> {

  late Timer _timer;
  //
  // @override
  // void initState() {
  //   _timer = Timer(const Duration(seconds: 4), () {
  //     Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
  //   });
  //   super.initState();
  // }
  // @override
  // void dispose() {
  //   _timer.cancel();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Center(
            child: Image.asset(AppImages().waterImage,height: 320,),
          ),
          Center(
            child: Image.asset(AppImages().logoImage),
          ),
          Spacer(),
          const Padding(
            padding: EdgeInsets.only(bottom: 45),
            //child: MyBtn(title: "SIGN IN"),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("Already have a account",style: TextStyle(color: Colors.white),)),
            ],
          )
        ],
      ),
    );
  }
}
