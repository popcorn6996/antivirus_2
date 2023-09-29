import 'package:anti_2/features/home/first_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int page = 0;
  final List<Widget> screens = const [
    FirstPage(),
    Center(
      child: Text('Hello'),
    ),
    Center(
      child: Text('Hello'),
    ),
    Center(
      child: Text('Hello'),
    ),
  ];

  onTap(int index) {
    setState(() {
      page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[page],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: page,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.bolt), label: 'Tool Box'),
            BottomNavigationBarItem(icon: Icon(Icons.masks), label: 'Discover'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'ME')
          ]),
    );
  }
}
