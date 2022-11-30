import 'package:flutter/material.dart';

class CardUi extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;
  final textColor;

  const CardUi({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
    required this.textColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Balance", style: TextStyle(
              fontSize: 15.0,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 10.0,),
            Text("\$ " + balance.toString(), style: TextStyle(
              fontSize: 15.0,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(cardNumber.toString(), style: TextStyle(color:textColor),),
                Text(expiryMonth.toString()+"/"+expiryYear.toString(), style: TextStyle(color:textColor)),
              ],
            )
          ],
        ),
      ),
    );
  }

}

