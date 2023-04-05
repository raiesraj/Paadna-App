import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mypanda/Screens/sceond_screen.dart';
import 'package:mypanda/Utilis/colors.dart';
import 'package:mypanda/Utilis/images.dart';

//
// class SigInScreenOne extends StatelessWidget {
//   const SigInScreenOne({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         bottom: const TabBar(
//           tabs: <Widget>[
//             Tab(
//               icon: Icon(Icons.cloud_outlined),
//             ),
//             Tab(
//               icon: Icon(Icons.beach_access_sharp),
//             ),
//             Tab(
//               icon: Icon(Icons.brightness_5_sharp),
//             ),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         children: <Widget>[
//           Center(
//             child: Text("It's cloudy here"),
//           ),
//           Center(
//             child: Text("It's rainy here"),
//           ),
//           Center(
//             child: Text("It's sunny here"),
//           ),
//         ],
//       ),
//     );
//   }
// }
class SigInScreenOne extends StatelessWidget {
  const SigInScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appBarColorTwo,
          leading:  IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
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
            tabs: <Widget>[
              Tab(
                text: "LogIn",
              ),
              Tab(
                text: "Sign Up",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            SigInTabScreen(),
            SigUpTabScreen(),
          ],
        ),
      ),
    );
  }
}

class SigInTabScreen extends StatelessWidget {
  const SigInTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBgColorTwo,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "Welcome back!",
              style: GoogleFonts.mulish(fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            IconBtn(
              colorbtn: Colors.white,
              title: "Sign In with Apple",
              image: AppImages().appleImage,
              color: AppColors.blackColor,
            ),
            IconBtn(
              colorbtn: Colors.white,
              title: "Sign In with Facebook",
              image: AppImages().facebookImage,
              color: AppColors.appFbColorTwo,
            ),
            IconBtn(
              colorbtn: AppColors.appGoogleTextColorTwo,
              title: "Sign In with Google",
              image: AppImages().googleImage,
              color: Colors.white,
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(left: 40, right: 30),
                  child: Divider(
                    color: Color.fromRGBO(142, 142, 142, 1),
                    thickness: 1,
                  ),
                )),
                Text(
                  "Or Log In With Email",
                  style: GoogleFonts.mulish(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(26, 26, 26, 0.74),
                  ),
                ),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(left: 30, right: 40),
                  child: Divider(
                    color: Color.fromRGBO(142, 142, 142, 1),
                    thickness: 1,
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.appTexFiledUnderLineColorTwo),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.appTexFiledUnderLineColorTwo),
                  ),
                  hintText: "E-Mail Address",
                  hintStyle: GoogleFonts.mulish(fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.appGoogleTextColorTwo),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.appTexFiledUnderLineColorTwo),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.appTexFiledUnderLineColorTwo),
                  ),
                  suffixIcon: Icon(Icons.visibility,size: 15,),
                  hintText: "Passowrd",
                  hintStyle: GoogleFonts.mulish(fontWeight: FontWeight.w500,fontSize: 14,
                  color: AppColors.appGoogleTextColorTwo,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            MyBtn(title: "LOG IN", color: Colors.black,onPress: (){},),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Forgot Password?",
                style: GoogleFonts.mulish(
                    color: AppColors.btnColorTwo, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account yet? ",
                ),
                Text(
                  "SIGN UP",
                  style: GoogleFonts.mulish(
                      color: AppColors.btnColorTwo, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class IconBtn extends StatelessWidget {
  final String title;
  final Color color;
  final String image;
  final Color colorbtn;

  const IconBtn({
    super.key,
    required this.title,
    required this.color,
    required this.image,
    required this.colorbtn,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Image.asset(image),
              Spacer(),
              Center(
                child: Text(
                  title,
                  style: GoogleFonts.mulish(fontSize: 18, color: colorbtn),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class SigUpTabScreen extends StatelessWidget {
  const SigUpTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBgColorTwo,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Text(
              "Sign up to book services\naccess deals and more!",
              style: GoogleFonts.mulish(fontSize: 18,fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            IconBtn(
              colorbtn: Colors.white,
              title: "Sign In with Apple",
              image: AppImages().appleImage,
              color: AppColors.blackColor,
            ),
            IconBtn(
              colorbtn: Colors.white,
              title: "Sign In with Facebook",
              image: AppImages().facebookImage,
              color: AppColors.appFbColorTwo,
            ),
            IconBtn(
              colorbtn: AppColors.appGoogleTextColorTwo,
              title: "Sign In with Google",
              image: AppImages().googleImage,
              color: Colors.white,
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 40, right: 30),
                      child: Divider(
                        color: Color.fromRGBO(142, 142, 142, 1),
                        thickness: 1,
                      ),
                    )),
                Text(
                  "Or Log In With Email",
                  style: GoogleFonts.mulish(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(26, 26, 26, 0.74),
                  ),
                ),
                Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 30, right: 40),
                      child: Divider(
                        color: Color.fromRGBO(142, 142, 142, 1),
                        thickness: 1,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            MyBtn(title: "SIGN UP WITH EMAIL", color: Colors.black,onPress: (){},),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account yet? ",
                ),
                Text(
                  "LOG IN",
                  style: GoogleFonts.mulish(
                      color: AppColors.btnColorTwo, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
