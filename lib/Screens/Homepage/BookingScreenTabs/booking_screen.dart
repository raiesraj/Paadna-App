import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mypanda/Screens/Homepage/BookingScreenTabs/past_screen.dart';
import 'package:mypanda/Screens/Homepage/BookingScreenTabs/upcoming_screen.dart';

import '../../../Utilis/colors.dart';


class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(

          toolbarHeight:30,
          backgroundColor: AppColors.blackColor,
          bottom: TabBar(

            indicatorColor: AppColors.appTabIndicatorColorTwo,
            unselectedLabelStyle: GoogleFonts.mulish(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            labelStyle: GoogleFonts.mulish(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            labelColor: AppColors.appTabIndicatorColorTwo,
            unselectedLabelColor: Colors.white,
            tabs: const <Widget>[
              Tab(
                text: "Upcoming",
              ),
              Tab(
                text: "Past",
              ),
            ],
          ),
        ),
        body: const  TabBarView(
          children: <Widget>[
            UpComingScreen(),
            PastScreen(),
          ],
        ),
      ),
    );
  }
}