import 'package:fashion/address.dart';
import 'package:fashion/home.dart';
import 'package:fashion/search.dart';
import 'package:fashion/tabbar.dart';
import 'package:fashion/women.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  List pages = [
    MyHomePage(),
    Womens_New(),
    Search(),
    Tabbar(),
    Address(),
  ];
  int current = 0;
  void onTabTapped(int index) {
    setState(() {
      current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[current],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: current,
          selectedLabelStyle: TextStyle(
            fontSize: 16.0, // Adjust the font size as needed
            fontWeight: FontWeight.bold, // Adjust the font weight as needed
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 16.0, // Adjust the font size as needed
            fontWeight: FontWeight.normal, // Adjust the font weight as needed
          ),
          onTap: onTabTapped,
          showUnselectedLabels: true,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.home,
                ),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.notifications_none_outlined),
                label: ''),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(null), // You can use Icon(null) or simply null
              label: 'Discover',
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.shopping_bag_outlined),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.person),
                label: '')
          ]),
    );
  }
}
