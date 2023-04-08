
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Components/home_card.dart';
import '../../Utilis/colors.dart';
import '../../Utilis/images.dart';


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
      backgroundColor: AppColors.appBarColorTwo,
      appBar: AppBar(
          elevation: 0,
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