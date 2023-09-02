import 'package:flutter/material.dart';

import 'Views/Screens/Home_page.dart';
import 'Views/Screens/Intro_screens.dart';
import 'Views/Screens/Splace_Screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/': (context) => Splace_Screen(),
        'Intro': (context) => Intro_Screen(),
        'Home': (context) => Home_page(),
      },
    ),
  );
}
