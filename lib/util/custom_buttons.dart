import 'package:flutter/material.dart';

// ignore: camel_case_types
class customButtons extends StatelessWidget {
  final String imageRelativeSource;
  final String buttonText;
  const customButtons(
      {required this.imageRelativeSource, required this.buttonText, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[100],
          boxShadow: [
            BoxShadow(
              offset: Offset.zero,
              color: Colors.grey.shade400,
              blurRadius: 40,
              spreadRadius: 15,
            )
          ]),
      height: 70,
      width: 70,
      // ignore: prefer_const_constructors
      padding: EdgeInsets.all(10),
      child: Image.asset(imageRelativeSource),
    );
  }
}
