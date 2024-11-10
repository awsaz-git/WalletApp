import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        gap: 2,
        color: Colors.grey[500],
          activeColor: Colors.grey[800],
          tabActiveBorder: Border.all(color: Colors.grey.shade50),
          tabBackgroundColor: Colors.white,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'home',
              padding: EdgeInsets.all(30),
              borderRadius: BorderRadius.circular(37.5),
              textStyle: TextStyle(
                fontFamily: "SF Pro",
                fontWeight: FontWeight.w300,
                fontSize: 18,
                color: Colors.grey[800],
              ),
            ),
            GButton(
              icon: Icons.credit_card,
              text: 'cards',
              padding: EdgeInsets.all(30),
              borderRadius: BorderRadius.circular(37.5),
              textStyle: TextStyle(
                fontFamily: "SF Pro",
                fontWeight: FontWeight.w300,
                fontSize: 18,
                color: Colors.grey[800],
              ),
            ),
            GButton(
              icon: Icons.bar_chart,
              text: 'transactions',
              padding: EdgeInsets.all(30),
              borderRadius: BorderRadius.circular(37.5),
              textStyle: TextStyle(
                fontFamily: "SF Pro",
                fontWeight: FontWeight.w300,
                fontSize: 18,
                color: Colors.grey[800],
              ),
            )
          ]
      )
    );
  }
}
