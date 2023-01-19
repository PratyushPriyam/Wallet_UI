// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class horizantal_cards extends StatelessWidget {
  final String imageAssetLoc;
  final String title;
  final String subTitle;

  const horizantal_cards({
    super.key,
    required this.imageAssetLoc,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              border: Border.all(
                color: Colors.grey.shade900,
              ),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    height: 100,
                    width: 100,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey.shade300,
                          blurRadius: 15,
                          spreadRadius: 5,
                        ),
                      ], border: Border.all(style: BorderStyle.solid)),
                      child: Image.asset(imageAssetLoc),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        subTitle,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
        ),
      ),
    );
  }
}
