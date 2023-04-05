import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mypanda/Screens/sceond_screen.dart';
import 'package:mypanda/Screens/sigin_screen_one.dart';
import 'package:mypanda/Utilis/colors.dart';
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
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10,),
          Center(
            child: Image.asset(AppImages().logoImage,width: 500,),
          ),
          const SizedBox(height:100,),
           MyBtn(title: "LOG IN",color: AppColors.blackColor,
          onPress: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const SigInScreenOne()));
          },
          ),
          const SizedBox(height: 20,),
           MyBtn(title: "Create a new account",color: AppColors.btnColorTwo,onPress: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>const SigInScreenOne()));
           },),
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Center(child: Text("Already have a account",style: TextStyle(color: Colors.white),)),
          //   ],
          // ),
        ],
      ),
    );
  }
}
