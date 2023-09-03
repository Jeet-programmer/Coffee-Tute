import 'package:cooffetute/commponents/bottom_nav.dart';
import 'package:cooffetute/const.dart';
import 'package:flutter/material.dart';
import 'ShopPage.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

int _selectedIndex = 0;
void navigateButtonBar(int index) {
  setState(() {
    _selectedIndex = index;
  });
}


final List<Widget> _pages =[
  ShopPage(),

  CartPage(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyButtomNavBar(
        onTabChange: (index)=> navigateButtonBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}