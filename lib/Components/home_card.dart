import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utilis/colors.dart';

class HomeCard extends StatelessWidget {
  final String text;
  final String image;
  final VoidCallback onPress;
  const HomeCard({
    super.key, required this.text, required this.image, required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        height: 120,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.homeCardBgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                width: 200,
                height: 90,
                decoration: const BoxDecoration(
                  //color: AppColors.btnColorTwo,
                ),
                child: Center(child: Text(text,style: GoogleFonts.mulish(fontSize: 14,fontWeight: FontWeight.w700,
                ),
                  softWrap: false,
                ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 130,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),bottomRight: Radius.circular(12),
                  ),
                  child: ColorFiltered(
                      colorFilter: ColorFilter.mode(Colors.white, BlendMode.softLight),
                      child: Image.asset(image,fit: BoxFit.cover,)),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}