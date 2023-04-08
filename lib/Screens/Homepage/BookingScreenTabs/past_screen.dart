import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class PastScreen extends StatelessWidget {
  const PastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("You don't have\nany bookings yet.",style: GoogleFonts.mulish(fontSize: 16,color: Colors.white),textAlign: TextAlign.center,))
        ],
      ),
    );
  }
}