// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_wallet/util/cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            // App Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "App",
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  // Plus Button
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.grey[400], shape: BoxShape.circle),
                      child: Icon(Icons.add))
                ],
              ),
            ),

            SizedBox(height: 25),

            // Cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  Cards(
                    balance: 1543.80,
                    cardNumber: 12345678,
                    expiryMonth: 08,
                    expiryYear: 28,
                    color: Colors.blue,
                  ),
                  Cards(
                    balance: 198.80,
                    cardNumber: 54785429,
                    expiryMonth: 07,
                    expiryYear: 26,
                    color: Colors.purple,
                  ),
                  Cards(
                    balance: 87543.80,
                    cardNumber: 42316354,
                    expiryMonth: 02,
                    expiryYear: 25,
                    color: Colors.orange,
                  ),
                  Cards(
                    balance: 1543.80,
                    cardNumber: 78564327,
                    expiryMonth: 09,
                    expiryYear: 27,
                    color: Colors.pink,
                  ),
                ],
              ),
            ),

            // 3 buttons -> send + pay + bills

            //colums -> stats +transactions
          ],
        ),
      ),
    );
  }
}
