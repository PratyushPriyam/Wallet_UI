// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  // ignore: prefer_typing_uninitialized_variables
  final color;

  const Cards(
      {Key? key,
      required this.balance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        width: 300,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 4),
            Text(
              "Balance",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              "Rs. ${balance.toString()}",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // Card Info
                Text(
                  "No.: ${cardNumber.toString()}",
                  style: TextStyle(color: Colors.white),
                ),
                // Card Expiry Date
                Text(
                  "Exp. Date: ${expiryMonth.toString()} / ${expiryYear.toString()}",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
