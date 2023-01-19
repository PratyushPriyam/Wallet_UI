// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_wallet/util/cards.dart';
import 'package:ui_wallet/util/custom_buttons.dart';

import '../util/horizantal_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 5),
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

            SizedBox(height: 15),

            // Cards
            Container(
              height: 160,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  Cards(
                    balance: 1543.80,
                    cardNumber: 12345678,
                    expiryMonth: 08,
                    expiryYear: 28,
                    color: Colors.blue[300],
                  ),
                  Cards(
                    balance: 198.80,
                    cardNumber: 54785429,
                    expiryMonth: 07,
                    expiryYear: 26,
                    color: Colors.purple[300],
                  ),
                  Cards(
                    balance: 87543.80,
                    cardNumber: 42316354,
                    expiryMonth: 02,
                    expiryYear: 25,
                    color: Colors.orange[300],
                  ),
                  Cards(
                    balance: 1543.80,
                    cardNumber: 78564327,
                    expiryMonth: 09,
                    expiryYear: 27,
                    color: Colors.pink[300],
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: JumpingDotEffect(
                  activeDotColor: Color.fromARGB(255, 99, 25, 210)),
            ),

            // 3 buttons -> send + pay + bills
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customButtons(
                    imageRelativeSource: "lib/icons/wallet.png",
                    idName: "SEND",
                    buttonText: "Text"),
                customButtons(
                    imageRelativeSource: "lib/icons/credit-card.png",
                    idName: "PAY",
                    buttonText: "Text"),
                customButtons(
                    imageRelativeSource: "lib/icons/bill.png",
                    idName: "BILLS",
                    buttonText: "Text"),
              ],
            ),

            //colums -> stats +transactions
            SizedBox(
              height: 15,
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exercises",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Column(
              children: [
                horizantal_cards(
                    imageAssetLoc: "lib/icons/analytics.png",
                    title: "Statistics",
                    subTitle: "Payment and income"),
                horizantal_cards(
                    imageAssetLoc: "lib/icons/transaction.png",
                    title: "Transactions",
                    subTitle: "Transaction history"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
