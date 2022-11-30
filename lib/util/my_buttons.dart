import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget{
  final iconImagePath;
  final buttonText;

  const MyButtons(
  {
    Key?key,
    required this.iconImagePath,
    required this.buttonText,
  }
      ) :super(key:key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //icon
        Container(
          height: 60,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 40,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        SizedBox(height: 10,),
        //metin
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xff440707),
          ),
        ),
      ],
    );
  }

}