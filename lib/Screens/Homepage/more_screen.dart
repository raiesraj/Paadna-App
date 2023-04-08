import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Components/custom_list_tile.dart';
import '../../Utilis/colors.dart';
import '../../Utilis/images.dart';
import '../sigin_screen_one.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.appBgColorTwo,
      appBar: AppBar(
        titleSpacing: 40,
        backgroundColor: AppColors.appBarColorTwo,
        centerTitle: false,
        toolbarHeight: 100,
        title:  Text("SIGN UP",style: GoogleFonts.mulish(fontSize: 14,color: AppColors.btnColorTwo),),
        leading: Transform.scale(
          scale: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage(AppImages().circleImage,),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          CustomListTile(
            text: "Contact details",
            image: AppImages().profileIcon,
            onPress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SigInScreenOne()));
            },
          ),
          CustomListTile(
            text: "Credits",
            image: AppImages().creditIcon,
            onPress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SigInScreenOne()));
            },
          ),
          CustomListTile(
            text: "invite & Earn",
            image: AppImages().inviteIcon,
          ),
          CustomListTile(
            text: "Payments",
            image: AppImages().paymentIcon,
            onPress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SigInScreenOne()));
            },
          ),
          CustomListTile(
            text: "Settings",
            image: AppImages().settingIcon,
          ),
          CustomListTile(
            text: "Rate the App",
            image: AppImages().rateAppIcon,
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Center(
              child: Text("Automated by Raies raj"),
            ),
          )
        ],
      ),
    );
  }
}