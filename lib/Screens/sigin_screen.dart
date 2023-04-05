import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mypanda/Components/textfiled.dart';
import 'package:mypanda/Components/textfiled_title.dart';
import 'package:mypanda/Screens/sceond_screen.dart';

import '../Utilis/colors.dart';
import '../Utilis/dummy_text.dart';
import '../Utilis/images.dart';

class SigInScreen extends StatefulWidget {
  const SigInScreen({Key? key}) : super(key: key);

  @override
  State<SigInScreen> createState() => _SigInScreenState();
}

class _SigInScreenState extends State<SigInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Image.asset(
                AppImages().splashImage,
                width: 269,
                height: 83,
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Center(
              child: Text(
                AppText().wellBack,
                style: GoogleFonts.karla(
                  fontSize: 35,
                  color: AppColors.createAnColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Log into my paadna Account",
                style: GoogleFonts.karla(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: AppColors.blackColor,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const TextFiledTitle(title: "Email Address"),
            CustomTextFiled(obscureText: false),
            const SizedBox(
              height: 21,
            ),
            const TextFiledTitle(title: "Password"),
            CustomTextFiled(obscureText: true),
            const TextFiledTitle(
              title: "Have you forgotten your password?",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "click here to recover it",
                style: GoogleFonts.karla(
                  fontSize: 15,
                  color: const Color(0XFF3D5427),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
             MyBtn(
               color: AppColors.btnColor,
              onPress: (){},
              title: "LOG IN",
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                Text(
                  "Do you not have a myPaadna account? ",
                  style: GoogleFonts.karla(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackColor,
                  ),
                ),
                InkWell(
                 child:  Expanded(
                   child: AutoSizeText(
                     "Sign up here",
                     style: GoogleFonts.karla(
                       fontSize: 13,
                       fontWeight: FontWeight.w400,
                       color: AppColors.btnColor,
                     ),
                   ),
                 ),
               )
              ],
            ),
            
          ],
        ),
      ),
    ));
  }
}
