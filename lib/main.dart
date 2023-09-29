import 'package:anti_2/features/home/screens/home_screen.dart';
import 'package:anti_2/theme/pallete.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anti 2',
      theme: Pallete.darkMode,
      home: const HomeScreen(),
    );
  }
}
