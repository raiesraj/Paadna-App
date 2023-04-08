import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String text;
  final String image;
  final VoidCallback? onPress;
  const CustomListTile({
    super.key, required this.text, required this.image, this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
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