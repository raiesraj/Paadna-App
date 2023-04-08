import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mypanda/Utilis/colors.dart';
import 'package:mypanda/Utilis/dummy_text.dart';
import 'package:mypanda/Utilis/images.dart';

import '../Components/textfiled.dart';
import '../Components/textfiled_title.dart';


class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  late bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              Center(
                child: Image.asset(
                  AppImages().splashImage,
                  width: 269,
                  height: 83,
                ),
              ),
              const SizedBox(height: 5),
              Center(
                child: Text(
                  AppText().createAn,
                  style:  GoogleFonts.karla(
                    fontSize: 35,
                    color: AppColors.createAnColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Center(
                child: Text(
                  AppText().getStarted,
                  style: GoogleFonts.karla(
                    fontSize: 15,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextFiledTitle(
                title: "First Name",
              ),
               CustomTextFiled(
                 obscureText: false,
               ),
              const TextFiledTitle(title: "Last Name"),
               CustomTextFiled(
                 obscureText: false,
               ),
              const TextFiledTitle(title: "Email Address"),
               CustomTextFiled(
                 obscureText: false,
               ),
              const TextFiledTitle(title: "Phone Number"),
               CustomTextFiled(
                 obscureText: false,
               ),
              const TextFiledTitle(title: "Password"),
               CustomTextFiled(
                 obscureText: showPassword,
                 icon: InkWell(
                   onTap: (){
                     setState(() {
                       showPassword =!showPassword;
                     });
                   },
                     child: showPassword? const Icon(Icons.visibility,size: 20,color: Colors.grey,):const Icon(Icons.visibility_off,size: 20,),
                 ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 20),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                          text: 'By clicking Register, you accept our ',
                          style: GoogleFonts.karla(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w400,
                          )),
                      TextSpan(
                        text: 'Terms & Conditions.',
                        style: GoogleFonts.karla(
                          color: AppColors.btnColor,
                          fontWeight: FontWeight.w500,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = (){

                      }
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // MyBtn(
              //   title: "Next",
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                            text: 'Already Registered? ',
                            style: GoogleFonts.karla(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w400,
                            )),
                        TextSpan(
                          text: 'Sign In',
                          style: GoogleFonts.karla(
                            color: AppColors.btnColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyBtn extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const MyBtn({
    super.key, required this.title, required this.color, required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPress,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Center(
              child: Text(
                title,
                style: GoogleFonts.karla(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
