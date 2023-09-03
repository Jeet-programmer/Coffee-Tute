import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButtomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
   MyButtomNavBar({super.key, required this.onTabChange,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
        onTabChange: (value)=> onTabChange!(value),
        color: Colors.grey[500],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[800],
        tabBackgroundColor: Color.fromARGB(255, 220, 217, 217),
        tabBorderRadius: 28,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Shop",
            ),
            GButton(
              icon: Icons.shopping_bag,
            text: "Cart",
            )
        ],
      ),
    );
  }
}