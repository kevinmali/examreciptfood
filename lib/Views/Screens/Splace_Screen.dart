import 'dart:async';

import 'package:flutter/material.dart';

class Splace_Screen extends StatefulWidget {
  const Splace_Screen({super.key});

  @override
  State<Splace_Screen> createState() => _Splace_ScreenState();
}

class _Splace_ScreenState extends State<Splace_Screen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, 'Intro');
    });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "Asset/Images/gif-for-food-52650-148861.gif",
              height: 400,
              width: 400,
            ),
          ),
          Text(
            "Welcome To Food Recipies",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange),
          )
        ],
      ),
    );
  }
}
