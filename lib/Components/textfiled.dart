import 'package:flutter/material.dart';



class CustomTextFiled extends StatefulWidget {
 var icon;
 final  bool obscureText;



   CustomTextFiled({super.key, this.icon,required this.obscureText});

  @override
  State<CustomTextFiled> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  bool passwordHide = false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 8),
      child: SizedBox(
        height: 50,
        child: TextField(
          obscureText: widget.obscureText,
          cursorColor: Colors.grey,
          style: TextStyle(
            color: Color(0XFF666666),
          ),
          decoration: InputDecoration(
            suffixIcon: widget.icon,
            fillColor: Color(0XFF999999).withOpacity(0.2),
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey, width: 0.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey,width: 0.5
              ),
            ),
          ),
        ),
      ),
    );



  }
}