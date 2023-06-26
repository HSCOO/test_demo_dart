import 'package:flutter/material.dart';
import 'package:test_demo_dart/src/pages/dang_an_page.dart';
import 'package:test_demo_dart/src/pages/home_page.dart';

import 'drawer_list.dart';
import 'pages/qian_bao_page.dart';

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({Key? key}) : super(key: key);

  @override
  BottomNavigationExampleState createState() => BottomNavigationExampleState();
}

class BottomNavigationExampleState extends State {
  int _selectedTab = 0;

  final List _pages = [
    const HomePage(),
    const DangAnPage(),
    const QianBaoPage(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerList(),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_3x3_outlined), label: "Product"),
        ],
      ),
    );
  }
}


