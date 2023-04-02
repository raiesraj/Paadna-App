import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TextFiledTitle extends StatelessWidget {
  final String title;

  const TextFiledTitle({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,),
      child: Text(title,style: GoogleFonts.karla(fontSize: 15,fontWeight: FontWeight.w400,color: Color(0XFF001533)),),
    );
  }
}


