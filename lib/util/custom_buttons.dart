import 'package:flutter/material.dart';

// ignore: camel_case_types
class customButtons extends StatelessWidget {
  final String imageRelativeSource;
  final String buttonText;
  final String idName;
  const customButtons(
      {required this.imageRelativeSource,
      required this.buttonText,
      required this.idName,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[100],
            boxShadow: [
              BoxShadow(
                offset: Offset.zero,
                color: Colors.grey.shade400,
                blurRadius: 40,
                spreadRadius: 20,
              )
            ]),
        height: 55,
        width: 55,
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(10),
        child: Image.asset(imageRelativeSource),
      ),
      Container(
        margin: EdgeInsets.only(top: 7),
        child: Text(
          idName,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      )
    ]);
  }
}
