import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mypanda/Utilis/colors.dart';
import 'package:mypanda/Utilis/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
   ServicesScreen(),
    ServicesScreen(),
    MoreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }





  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.btnColorTwo,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}


class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Call Now"),
            content: const Text("1234567890"),
            actions: <Widget>[
              TextButton(
                child: const Text('Call'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return  Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColorTwo,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search),),
        ],
        leading: Transform.scale(
          scale: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Image.asset(AppImages().logoImage,),
            ),)
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children:  [
                HomeCard(
                  text: "Massage",
                  onPress: (){},
                  image: AppImages().massageImage,

                ),
                HomeCard(
                  text: "Nails",
                  onPress: (){},
                  image: AppImages().nailImage,

                ),
                HomeCard(
                  text: "MAKE UP",
                  onPress: (){},
                  image: AppImages().massageImage,

                ),
                HomeCard(
                  text: "HAIR",
                  onPress: (){},
                  image: AppImages().nailImage,

                ),
                HomeCard(
                  text: "FACIALS",
                  onPress: (){},
                  image: AppImages().massageImage,

                ),
                HomeCard(
                  text: "SPRAY TAN",
                  onPress: (){},
                  image: AppImages().nailImage,

                ),
                HomeCard(
                  text: "WAXING",
                  onPress: (){},
                  image: AppImages().massageImage,

                ),
                HomeCard(
                  text: "EYES & BROWS",
                  onPress: (){},
                  image: AppImages().nailImage,

                ),
                HomeCard(
                  text: "YOGA & PILATES",
                  onPress: (){},
                  image: AppImages().massageImage,

                ),
                HomeCard(
                  text: "MEN'S GROOMING",
                  onPress: (){},
                  image: AppImages().nailImage,
                ),
                  const SizedBox(height: 15,),
                const Center(child: Text("Need Something Else?"),),
                const SizedBox(height: 15,),
                const Center(child: Text("Just le us know. You\'ll be amazed at what we can do."),),
                const SizedBox(height: 15,),
                Center(child: GestureDetector(child: Text("CALL NOW"),onTap: (){
                  _showMyDialog();
                },),),
                const SizedBox(height: 10,),
              ],
            )
          ),
        ],
      ),
    );
  }

}

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
        backgroundColor: AppColors.appBarColorTwo,
        centerTitle: false,
        toolbarHeight: 120,
        title: const Text("SIGN UP"),
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
          ),
          CustomListTile(
            text: "Credits",
            image: AppImages().creditIcon,
          ),
          CustomListTile(
            text: "invite & Earn",
            image: AppImages().inviteIcon,
          ),
          CustomListTile(
            text: "Payments",
            image: AppImages().paymentIcon,
          ),
          CustomListTile(
            text: "Settings",
            image: AppImages().settingIcon,
          ),
          CustomListTile(
            text: "Rate the App",
            image: AppImages().rateAppIcon,
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Center(
              child: Text("Automated by Raies raj"),
            ),
          )
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String text;
  final String image;
  const CustomListTile({
    super.key, required this.text, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
      dense: false,
      leading: Transform.scale(
        scale: 1,
          child: Image.asset(image,width: 50,height: 50,)),
       title: Text(text),
      trailing: Icon(Icons.arrow_forward_ios,size: 18,),
    );
  }
}




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
        height: 130,
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
