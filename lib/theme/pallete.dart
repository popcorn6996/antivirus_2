import 'package:flutter/material.dart';

class Pallete {
  //Colors
  static const blackColor = Colors.black;
  static var greyColor = Colors.grey[900];
  static const blueColor = Colors.blue;
  static const whiteColor = Colors.white;

  //Themes(Light MOde)

  //Themes(DARK mode)
  static var darkMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color.fromARGB(1, 20, 18, 18),
  );
}
